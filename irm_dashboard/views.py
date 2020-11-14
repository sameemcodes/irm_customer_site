from django.shortcuts import render
import os
import json
from django.http import HttpResponse
# Create your views here.
from django.shortcuts import render
from django.http import JsonResponse
from django.shortcuts import redirect
from django.http import HttpResponseRedirect
from django.core.exceptions import ObjectDoesNotExist
from customer_selection.models import IrmCustGblMst
from django.conf import settings
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

def get_customer_data_info(user_id):
    full_filepath =  os.path.join(settings.MEDIA_ROOT, 'demo')
    user_data_list = []

    data_list = os.listdir(full_filepath)
    print("Data list: ", data_list)

    for filename in data_list:
        ref_user_id = filename[0]
        if int(ref_user_id) == user_id:
            user_data_list.append(filename[2:])
     
    print("Data list: ", user_data_list)

    return user_data_list

def index(request):
    destpath = os.path.join("irm-dashboard-templates", "index.html")

    customer_dict = {}
    idx = 0


    if 'login_status' in request.session and 'user_name' in request.session:
        user_name = request.session['user_name']
        user_id = request.session['user_id']
        render_language(request.session['lang'])
        user_data_list = get_customer_data_info(user_id)

        if not request.session['login_status']:
            return redirect('irm_login_auth')

        else:
            if request.method == 'GET' and request.is_ajax():

                request.session['customer_select_id'] = request.GET.get("customer_select_id")


            user_obj = IrmCustGblMst.objects.filter(is_active='Y', crd_usr=user_id)

            for name in user_obj.values('cust_legal_name'):
                customer_dict[str(idx)] = name['cust_legal_name']
                idx += 1

            customer_dict['user_name'] = user_name

            if 'customer_select_id' in request.session:
                customer_dict['customer_select_id'] = request.session['customer_select_id']

            else:
                customer_dict['customer_select_id']  = -1

            customer_dict = json.dumps(customer_dict)

            return render(request, destpath, {'customer_dict': customer_dict, 'user_data_list':user_data_list})



        return render(request, destpath)

    else:
        return redirect('irm_login_auth')
