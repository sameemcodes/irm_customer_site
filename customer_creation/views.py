from django.shortcuts import render
import os
import json
from datetime import datetime
from collections import defaultdict
from django.http import HttpResponse
# Create your views here.
from django.shortcuts import render
from django.http import JsonResponse
from django.shortcuts import redirect
from django.http import HttpResponseRedirect
from django.core.exceptions import ObjectDoesNotExist
from django.utils.dateformat import DateFormat
from django.utils.formats import get_format
from irm_login.models import IrmAppUsers
from customer_selection.models import IrmCustGblMst
from common_master_details.models import IrmCommonMasterDtl
from common_master_hdr.models import IrmCommonMasterHdr
from irm_module_mst_db.models import IrmModuleMst
from irm_customer_source_detail_db.models import IrmCustSourceDtl
from irm_customer_license_db.models import IrmCustModuleLicenseDtl
# Create your views here.

# Create your views here.
def render_language(language):
    if language == "English":
        user_language = 'en-us'
        translation.activate(user_language)
        #response = HttpResponse()
        #response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)

    elif language == "Arabic":
        user_language = 'ar'
        translation.activate(user_language)
        #response = HttpResponse()
        #response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)

    else:
        pass

def get_db_data():
    # Total 5 master types
    master_types = ['Region', 'Designation', 'Deployment Type', 'Engagement Type', 'Source ERPs']
    mst_dtl_ids = {}
    master_type_desc = defaultdict(list)
    master_type_meta = defaultdict(list)
    module_names = {}

    for master_type in master_types:

        irm_common_master_hdr = IrmCommonMasterHdr.objects.get(master_type=master_type)
        irm_common_master_dtl = IrmCommonMasterDtl.objects.filter(mst_hdr=irm_common_master_hdr.mst_hdr_id)
        irm_module_mst = IrmModuleMst.objects.filter()


        for obj in irm_common_master_dtl.values('mst_dtl_id','description'):
            mst_dtl_ids[obj['description']] = obj['mst_dtl_id']
            master_type_desc[master_type].append(obj['description'])

    for obj in irm_module_mst.values('module_id', 'module_name'):
        module_names[obj['module_name']] = obj['module_id']


    module_names_dict = module_names

    master_type_desc = json.dumps(master_type_desc)
    module_names = json.dumps(module_names)

    return mst_dtl_ids, master_type_desc, module_names, module_names_dict

def prepare_header_data(posted_data, mst_dtl_ids, df):
    IrmCustGblMst_db_data = {}

    IrmCustGblMst_db_data['cust_legal_name'] = posted_data['cust_legal_name']
    IrmCustGblMst_db_data['region_mst'] = IrmCommonMasterDtl.objects.get(mst_dtl_id=mst_dtl_ids[posted_data['region']]) #Foreign key
    IrmCustGblMst_db_data['deploy_type_mst_id'] = mst_dtl_ids[posted_data['deploy_type']]
    IrmCustGblMst_db_data['audit_type_mst'] = IrmCommonMasterDtl.objects.get(mst_dtl_id=mst_dtl_ids[posted_data['engagement_type']]) #Foreign key
    IrmCustGblMst_db_data['start_date'] = df.format('Y-m-d')
    IrmCustGblMst_db_data['is_active'] = 'Y'
    IrmCustGblMst_db_data['prim_contact'] = posted_data['primary_contact']
    IrmCustGblMst_db_data['country'] = posted_data['country']
    IrmCustGblMst_db_data['num_employees'] = posted_data['employee_num']
    IrmCustGblMst_db_data['crd_date'] = df.format('Y-m-d')
    IrmCustGblMst_db_data['crd_usr'] = IrmAppUsers.objects.get(irm_user_id=posted_data['user_id']) #Foreign key

    return IrmCustGblMst_db_data

def insert_header_data_db(IrmCustGblMst_db_data):
    irm_cust_gbl_mst = IrmCustGblMst(cust_legal_name=IrmCustGblMst_db_data['cust_legal_name'], region_mst=IrmCustGblMst_db_data['region_mst'],
                                    deploy_type_mst_id=IrmCustGblMst_db_data['deploy_type_mst_id'], audit_type_mst=IrmCustGblMst_db_data['audit_type_mst'],
                                    start_date=IrmCustGblMst_db_data['start_date'], end_date=None, is_active=IrmCustGblMst_db_data['is_active'],
                                    prim_contact= IrmCustGblMst_db_data['prim_contact'], country= IrmCustGblMst_db_data['country'],revenue_range=None, num_employees= IrmCustGblMst_db_data['num_employees'],
                                    crd_date=IrmCustGblMst_db_data['crd_date'], upd_date=IrmCustGblMst_db_data['crd_date'], crd_usr=IrmCustGblMst_db_data['crd_usr'],
                                    upd_usr_id=None)


    irm_cust_gbl_mst.save()

def prepare_opt_data(posted_data, mst_dtl_ids, module_names_dict, df):
    idx_db = IrmCustGblMst.objects.last().cust_id

    IrmCustSourceDtl_db_data = defaultdict(list)
    IrmCustModuleLicenseDtl_db_data = defaultdict(list)

    IrmCustSourceDtl_db_data['cust'] = IrmCustGblMst.objects.get(cust_id=idx_db) #reuseable as cust in IrmCustModuleLicenseDtl
    IrmCustSourceDtl_db_data['crd_date'] = df.format('Y-m-d') #reuseable as crd_date in IrmCustModuleLicenseDtl
    IrmCustSourceDtl_db_data['crd_usr_id'] = posted_data['user_id'] #reuseable as crd_usr_id in IrmCustModuleLicenseDtl

    for src_erp in posted_data['src_erp']:
        IrmCustSourceDtl_db_data['source_mst'].append(IrmCommonMasterDtl.objects.get(mst_dtl_id=mst_dtl_ids[src_erp]))

    for module_licenses in posted_data['module_licenses']:
        IrmCustModuleLicenseDtl_db_data['module'].append(IrmModuleMst.objects.get(module_id=int(module_names_dict[module_licenses])))

    return IrmCustSourceDtl_db_data, IrmCustModuleLicenseDtl_db_data


def insert_opt_data_db(IrmCustSourceDtl_db_data, IrmCustModuleLicenseDtl_db_data):

    for source_mst in IrmCustSourceDtl_db_data['source_mst']:
        irm_cust_src_dtl = IrmCustSourceDtl(cust = IrmCustSourceDtl_db_data['cust'], source_mst = source_mst,
                                            crd_date = IrmCustSourceDtl_db_data['crd_date'], upd_date=IrmCustSourceDtl_db_data['crd_date'],
                                            crd_usr_id=IrmCustSourceDtl_db_data['crd_usr_id'], upd_usr_id=None)

        irm_cust_src_dtl.save()

    for module in IrmCustModuleLicenseDtl_db_data['module']:
        irm_license_mst = IrmCustModuleLicenseDtl(cust = IrmCustSourceDtl_db_data['cust'], module = module,
                                                crd_date = IrmCustSourceDtl_db_data['crd_date'], upd_date=IrmCustSourceDtl_db_data['crd_date'],
                                                crd_usr_id=IrmCustSourceDtl_db_data['crd_usr_id'], upd_usr_id=None)

        irm_license_mst.save()


def index(request):
    destpath = os.path.join("customer-creation-templates", "index.html")
    mst_dtl_ids, master_type_desc, module_names, module_names_dict = get_db_data()
    posted_data = {}

    if 'login_status' in request.session and 'user_id' in request.session:
        user_name = request.session['user_name']
        user_id = request.session['user_id']

        if not request.session['login_status']:
            return redirect('irm_login_auth')
        else:
            #store irm_user_id from session
            render_language(request.session['lang'])
            posted_data['user_id'] = request.session['user_id']

            if request.method == 'POST' and request.is_ajax():
                posted_data['cust_legal_name'] = request.POST['cust_legal_name']
                posted_data['deploy_type'] = request.POST['deploy_type']
                posted_data['src_erp'] = request.POST.getlist('src_erp')
                posted_data['region'] = request.POST['region']
                posted_data['primary_contact'] = request.POST['primary_contact']
                posted_data['country'] = request.POST['country']
                posted_data['email'] = request.POST['email']
                posted_data['engagement_type'] = request.POST['engagement_type']
                posted_data['module_licenses'] = request.POST.getlist('module_licenses')
                posted_data['employee_num'] = request.POST['employee_num']
                posted_data['designation'] = request.POST['designation']

                #Time Now
                dt = datetime.now()
                df = DateFormat(dt)
                df.format('Y-m-d h-m-s')

                try:
                    IrmCustGblMst_db_data = prepare_header_data(posted_data, mst_dtl_ids, df)
                    insert_header_data_db(IrmCustGblMst_db_data)

                    IrmCustSourceDtl_db_data, IrmCustModuleLicenseDtl_db_data = prepare_opt_data(posted_data, mst_dtl_ids, module_names_dict, df)
                    insert_opt_data_db(IrmCustSourceDtl_db_data, IrmCustModuleLicenseDtl_db_data)

                    return JsonResponse({"success":True}, status=200)

                except ObjectDoesNotExist:
                    print("Failed")
                    request.session['login_status'] = True
                    return JsonResponse({"success":False}, status=400)

    else:
        return redirect('irm_login_auth')



    return render(request, destpath, {'user_name': json.dumps(user_name), 'master_type_desc': master_type_desc, 'module_names': module_names})
