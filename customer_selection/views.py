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

def index(request):
    destpath = os.path.join("customer-selection-templates", "index.html")
    customer_dict = {}

    idx = 0


    if 'login_status' in request.session and 'user_name' in request.session:
        user_name = request.session['user_name']
        user_id = request.session['user_id']
        render_language(request.session['lang'])

        if not request.session['login_status']:
            return redirect('irm_login_auth')

        else:
            user_obj = IrmCustGblMst.objects.filter(is_active='Y', crd_usr=user_id)

            for name in user_obj.values('cust_legal_name'):
                customer_dict[str(idx)] = name['cust_legal_name']
                idx += 1

            customer_dict['user_name'] = user_name
            customer_dict = json.dumps(customer_dict)


            if request.method == 'POST' and request.is_ajax():

                try:
                    customer_select_id = request.POST['customer_sel']
                    #keep this variable for dashboard
                    request.session['customer_select_id'] = customer_select_id

                    return JsonResponse({"success":True}, status=200)
                #
                except:
                    print("Failed")
                    return JsonResponse({"success":False}, status=400)



        return render(request, destpath, {'customer_dict': customer_dict})

    else:
        return redirect('irm_login_auth')
