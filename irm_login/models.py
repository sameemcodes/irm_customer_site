from django.db import models

# Create your models here.
class IrmAppUsers(models.Model):
    irm_user_id = models.AutoField(db_column='IRM_USER_ID', primary_key=True)  # Field name made lowercase.
    app_username = models.CharField(db_column='APP_USERNAME', max_length=45)  # Field name made lowercase.
    app_pass_encrypt = models.TextField(db_column='APP_PASS_ENCRYPT')  # Field name made lowercase.
    is_active = models.CharField(db_column='IS_ACTIVE', max_length=1)  # Field name made lowercase.
    user_fname = models.CharField(db_column='USER_FNAME', max_length=100)  # Field name made lowercase.
    user_lname = models.CharField(db_column='USER_LNAME', max_length=100)  # Field name made lowercase.
    user_email = models.CharField(db_column='USER_EMAIL', max_length=100)  # Field name made lowercase.
    user_contact_num = models.CharField(db_column='USER_CONTACT_NUM', max_length=45, blank=True, null=True)  # Field name made lowercase.
    crd_date = models.DateTimeField(db_column='CRD_DATE', blank=True, null=True)  # Field name made lowercase.
    upd_date = models.DateTimeField()
    crd_usr_id = models.IntegerField(db_column='CRD_USR_ID', blank=True, null=True)  # Field name made lowercase.
    upd_usr_id = models.IntegerField(db_column='UPD_USR_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'irm_app_users'
