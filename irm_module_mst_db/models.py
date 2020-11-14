from django.db import models

# Create your models here.
class IrmModuleMst(models.Model):
    module_id = models.AutoField(primary_key=True)
    module_name = models.CharField(max_length=100, blank=True, null=True)
    module_code = models.CharField(max_length=45, blank=True, null=True)
    module_type = models.CharField(max_length=45, blank=True, null=True)
    is_active = models.CharField(max_length=1, blank=True, null=True)
    crd_date = models.DateTimeField(blank=True, null=True)
    upd_date = models.DateTimeField()
    crd_usr_id = models.IntegerField(blank=True, null=True)
    upd_usr_id = models.IntegerField(blank=True, null=True)
    cust = models.ForeignKey('customer_selection.IrmCustGblMst', models.DO_NOTHING, db_column='CUST_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'irm_module_mst'
