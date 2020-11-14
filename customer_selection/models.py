from django.db import models
# Create your models here.

class IrmCustGblMst(models.Model):
    cust_id = models.AutoField(db_column='CUST_ID', primary_key=True)  # Field name made lowercase.
    cust_legal_name = models.CharField(db_column='CUST_LEGAL_NAME', max_length=100)  # Field name made lowercase.
    region_mst = models.ForeignKey('common_master_details.IrmCommonMasterDtl', models.DO_NOTHING, blank=True, null=True, related_name="common_master_details_region_mst")
    deploy_type_mst_id = models.IntegerField(blank=True, null=True)
    audit_type_mst = models.ForeignKey('common_master_details.IrmCommonMasterDtl', models.DO_NOTHING, blank=True, null=True, related_name="common_master_details_audit_type_mst")
    start_date = models.DateTimeField(db_column='START_DATE', blank=True, null=True)  # Field name made lowercase.
    end_date = models.DateTimeField(db_column='END_DATE', blank=True, null=True)  # Field name made lowercase.
    is_active = models.CharField(db_column='IS_ACTIVE', max_length=2, blank=True, null=True)  # Field name made lowercase.
    prim_contact = models.CharField(db_column='PRIM_CONTACT', max_length=100, blank=True, null=True)  # Field name made lowercase.
    #mycountry
    country = models.CharField(db_column = 'COUNTRY',max_length  =100)
    revenue_range = models.CharField(db_column='REVENUE_RANGE', max_length=100, blank=True, null=True)  # Field name made lowercase.
    num_employees = models.CharField(db_column='NUM_EMPLOYEES', max_length=100, blank=True, null=True)  # Field name made lowercase.
    crd_date = models.DateTimeField(db_column='CRD_DATE', blank=True, null=True)  # Field name made lowercase.
    upd_date = models.DateTimeField()
    crd_usr = models.ForeignKey('irm_login.IrmAppUsers', models.DO_NOTHING, db_column='CRD_USR_ID', blank=True, null=True)  # Field name made lowercase.
    upd_usr_id = models.IntegerField(db_column='UPD_USR_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'irm_cust_gbl_mst'
