from django.db import models
# Create your models here.
class IrmCommonMasterHdr(models.Model):
    mst_hdr_id = models.AutoField(primary_key=True)
    master_type = models.CharField(max_length=100, blank=True, null=True)
    upd_date = models.DateTimeField()
    cust = models.ForeignKey('customer_selection.IrmCustGblMst', models.DO_NOTHING, blank=True, null=True)
    is_active = models.CharField(max_length=1, blank=True, null=True)
    upd_usr_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'irm_common_master_hdr'
