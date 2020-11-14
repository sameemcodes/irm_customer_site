from django.db import models

# Create your models here.
class IrmCustModuleLicenseDtl(models.Model):
    row_id = models.AutoField(db_column='ROW_ID', primary_key=True)  # Field name made lowercase.
    cust = models.ForeignKey('customer_selection.IrmCustGblMst', models.DO_NOTHING, db_column='CUST_ID')  # Field name made lowercase.
    module = models.ForeignKey('irm_module_mst_db.IrmModuleMst', models.DO_NOTHING, db_column='MODULE_ID', blank=True, null=True)  # Field name made lowercase.
    crd_date = models.DateTimeField(db_column='CRD_DATE', blank=True, null=True)  # Field name made lowercase.
    upd_date = models.DateTimeField()
    crd_usr_id = models.IntegerField(db_column='CRD_USR_ID', blank=True, null=True)  # Field name made lowercase.
    upd_usr_id = models.IntegerField(db_column='UPD_USR_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'irm_cust_module_license_dtl'
