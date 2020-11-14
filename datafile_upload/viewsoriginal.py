import os
import json
from datetime import datetime
from collections import defaultdict
from django.http import HttpResponse
# Create your views here.
from django.shortcuts import render
from django.http import JsonResponse
from django.shortcuts import redirect
from django.utils.dateformat import DateFormat
from django.core.exceptions import ObjectDoesNotExist
from django.shortcuts import render

from django.conf import settings
from customer_selection.models import IrmCustGblMst
from common_master_details.models import IrmCommonMasterDtl
from common_master_hdr.models import IrmCommonMasterHdr
from irm_customer_source_detail_db.models import IrmCustSourceDtl
from irm_job_module.models import IrmJobMaster
from ebs_db_content import ebs_db_insert as ebs_ins
from hana_db_content import hana_db_insert as hana_ins
import pandas as pd
import zipfile
import time

# from celery import shared_task
# from celery_progress.backend import ProgressRecorder


ebs_sources_data = ['fnd_application_vl.csv', 'fnd_concurrent_programs_vl.csv', 'fnd_data_groups.csv', 'fnd_form_functions_vl.csv', 'fnd_menu_entries_vl.csv',
                    'fnd_menus_vl.csv', 'fnd_nodes.csv', 'fnd_profile_options.csv', 'fnd_profile_options_tl.csv', 'fnd_profile_options_vl.csv',
                    'fnd_profile_option_values.csv', 'fnd_request_groups.csv', 'fnd_request_group_units.csv', 'fnd_resp_functions.csv', 'fnd_responsibility_vl.csv',
                    'fnd_user.csv', 'fnd_user_resp_groups_direct.csv', 'gl_access_sets.csv', 'hr_all_organization_units.csv', 'hr_operating_units.csv',
                    'po_line_types_b.csv', 'po_line_types_tl.csv', 'po_system_parameters_all.csv']


hana_sources_data = ['SOD-01-AGR_1252.csv', 'SOD-02-AGR_TCODES.csv', 'SOD-03-USOBT_C.csv', 'SOD-04-TOBJ.csv', 'SOD-05-AGR_1251.csv', 'SOD-06-AGR_USERS.csv',
                    'SOD-07-USR21.csv', 'SOD-08-ADRP.csv', 'SOD-09-AGR_TEXTS.csv', 'SOD-10-T001.csv', 'SOD-11-T001K.csv', 'SOD-12-T024E.csv', 'SOD-13-T024.csv',
                    'SOD-14-TVKO.csv', 'SOD-15-TVTW.csv', 'SOD-16-TGSB.csv', 'SOD-17-FM01.csv', 'SOD-18-TKA01.csv', 'SOD-22-AGR_TIMEB.csv', 'SOD-23-USR02.csv',
                    'SOD-24-USH02.csv']



# @shared_task(bind=True)
# def testing_celery(self):
#     progress_recorder = ProgressRecorder(self)
#     result = 0
#     print('Starting the process..............')
#     for i in range(5):
#         progress_recorder.set_progress(result + 1, 5)
#         result += 1
#         time.sleep(1)
#
#         print('End')
#
#     return 'Task Complete'


def insert_job_data(data_desc, cust_id, run_date, user_id, source_system_id, job_insert_bool):
    if job_insert_bool:
        irm_job_instance = IrmJobMaster(irm_job_desc=data_desc, irm_cust_id=cust_id, irm_run_date=run_date, irm_user_id=user_id, irm_source_system_id=source_system_id)
        irm_job_instance.save()

def read_zipped_csv(zip_path, src_type, job_insert_bool):
    zf = zipfile.ZipFile(zip_path)
    df_data = defaultdict(list)
    n_error = 0

    if src_type == 'HANA':
        for hana_file in hana_sources_data:
            try:
                df = pd.read_csv(zf.open(hana_file), header=None) # change here if you want to deal with limited data, add field 'nrows = number of rows'
                key = os.path.splitext(hana_file)[0]
                df_data[key].append(df)
                job_insert_bool = True

            except:
                print(hana_file, ' Error')
                n_error += 1

        if n_error == len(hana_sources_data):
            job_insert_bool = False
            return JsonResponse({"success":False}, status=400)

    elif src_type == 'EBS':
        for ebs_file in ebs_sources_data:
            try:
                df = pd.read_csv(zf.open(ebs_file), header=None) # change here if you want to deal with limited data, add field 'nrows = number of rows'
                df = df.iloc[1:,:]
                key = os.path.splitext(ebs_file)[0]
                df_data[key].append(df)
                job_insert_bool = True

            except:
                print(ebs_file, ' Error')
                n_error += 1

        if n_error == len(ebs_sources_data):
            job_insert_bool = False
            return JsonResponse({"success":False}, status=400)

    return df_data, job_insert_bool


def render_source_type(src_erp_name):
    src_type = ''

    if "SAP" in src_erp_name:
        src_type = 'HANA'

    elif "Oracle" in src_erp_name:
        src_type = 'EBS'

    else:
        src_type = 'Undefined'

    return src_type

def prep_customer_data(cust_id, user_id, run_date):
    src_customer_data = {}
    src_customer_data['irm_job_id'] = IrmJobMaster.objects.last().irm_job_id
    src_customer_data['cust_id'] = cust_id
    src_customer_data['user_id'] = user_id
    src_customer_data['run_date'] = run_date

    return src_customer_data



# Create your views here.
def index(request):
    destpath = os.path.join("datafile-upload-templates", "index.html")

    if 'login_status' in request.session and 'user_name' in request.session:
        user_name = request.session['user_name']
        user_id = request.session['user_id']
        customer_dict = {}
        master_type_desc = {}
        result = 0
        cust_global_info = defaultdict(list)
        customer_dict['user_name'] = user_name

        idx = 0

        if not request.session['login_status']:
            return redirect('irm_login_auth')

        else:
            if request.method == 'POST' and request.is_ajax():
                datafile = request.FILES['zip_datafile']
                src_erp = request.POST['src_erp']
                cust_id = request.POST['customer_select'] #for db
                data_desc = request.POST['dataupload_desc'] #for db
                datafile_name = datafile.name
                irm_com_master_dtl = IrmCommonMasterDtl.objects.get(mst_dtl_id = src_erp)
                src_erp_name = irm_com_master_dtl.description
                src_type = render_source_type(src_erp_name)
                job_insert_bool = False

                #Time Now
                dt = datetime.now()
                current_time = DateFormat(dt)

                #Concatanate user_id to retrive in irm dashboard
                datafile_name = str(user_id)+"_"+datafile_name

                full_filepath =  os.path.join(settings.MEDIA_ROOT, 'demo', datafile_name)
                datafile_content = datafile.read()
                ext = os.path.splitext(full_filepath)[-1].lower()

                if src_type != 'Undefined':
                    if ext == '.zip':
                        try:
                            f = open(full_filepath, 'wb+')
                            f.write(datafile_content)
                            f.close()

                            df_data, job_insert_bool = read_zipped_csv(full_filepath, src_type, job_insert_bool)
                            src_customer_data = prep_customer_data(int(cust_id), int(user_id), current_time.format('Y-m-d'))
                            insert_job_data(data_desc, int(cust_id), current_time.format('Y-m-d'), int(user_id), int(src_erp), job_insert_bool)


                            if src_type == 'HANA':
                                hana_ins.insert_data_db(df_data, src_customer_data)

                            elif src_type == 'EBS':
                                ebs_ins.insert_data_db(df_data, src_customer_data)



                            #result = testing_celery.delay()

                            return JsonResponse({"success":True}, status=200)

                        except Exception as e:
                            print(e)
                            return JsonResponse({"success":False}, status=400)

                    else:
                        return JsonResponse({"success":False}, status=400)

                else:
                    return JsonResponse({"success":False}, status=400)




            else:
                source_mst_ids = []
                ################ For client company ######################
                user_obj = IrmCustGblMst.objects.filter(is_active='Y', crd_usr=user_id)

                for name in user_obj.values('cust_id','cust_legal_name'):
                    customer_dict[name['cust_id']] = name['cust_legal_name']


                customer_dict['user_name'] = user_name

                if 'customer_select_id' in request.session:
                    customer_dict['customer_select_id'] = request.session['customer_select_id']

                else:
                    customer_dict['customer_select_id']  = -1

                customer_dict = json.dumps(customer_dict)

                ########################For Source ERPs######################
                master_type = 'Source ERPs'

                irm_cust_src_dtl = IrmCustSourceDtl.objects.filter(crd_usr_id=user_id)

                for obj in irm_cust_src_dtl.values('cust_id','source_mst_id'):
                    source_mst_ids.append(obj['source_mst_id'])
                    cust_global_info[obj['cust_id']].append(obj['source_mst_id'])
                    idx += 1

                cust_global_info = json.dumps(cust_global_info)

                irm_common_master_dtl = IrmCommonMasterDtl.objects.filter(mst_dtl_id__in = source_mst_ids)

                for obj in irm_common_master_dtl.values('mst_dtl_id','description'):
                    master_type_desc[obj['mst_dtl_id']] = obj['description']


                return render(request, destpath, {'customer_dict': customer_dict, 'master_type_desc':master_type_desc,
                                                 'cust_global_info':cust_global_info})


    else:
        return redirect('irm_login_auth')
