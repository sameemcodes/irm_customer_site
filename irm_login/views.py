import os
from django.http import HttpResponse
# Create your views here.
from django.shortcuts import render
from django.http import JsonResponse
from django.shortcuts import redirect
from django.core.exceptions import ObjectDoesNotExist

from irm_login.models import IrmAppUsers
from django.utils import translation
from ebs_db_content.models import PoLineTypesTl

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

    context_dict = {"login_status":"False"}
    destpath = os.path.join("irmlogin-templates", "index.html")
    #PoLineTypesTl.objects.using('ebs_db').create(line_type_id=666)

    if request.method == 'GET' and request.is_ajax():

        language = request.GET.get("language")

        request.session['lang'] = language

        translation = render_language(request.session['lang'])

        return JsonResponse({'language':request.session['lang']})


    elif request.method == 'POST' and request.is_ajax():
        email = request.POST['irm_usr_email']
        password = request.POST['irm_usr_pass']

        try:
            user_obj = IrmAppUsers.objects.get(app_username = email, app_pass_encrypt = password)
            request.session['user_id'] = user_obj.irm_user_id
            request.session['user_email'] = user_obj.user_email
            request.session['user_name'] = user_obj.user_fname + ' ' + user_obj.user_lname
            request.session['login_status'] = True

            return JsonResponse({"success":True}, status=200)

        except ObjectDoesNotExist:
            print("Failed")
            request.session['login_status'] = False
            return JsonResponse({"success":False}, status=400)

    return render(request, destpath, context=context_dict)
