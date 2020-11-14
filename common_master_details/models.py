from django.db import models
# Create your models here.
class IrmCommonMasterDtl(models.Model):
    mst_dtl_id = models.AutoField(primary_key=True)
    mst_hdr = models.ForeignKey('common_master_hdr.IrmCommonMasterHdr', models.DO_NOTHING)
    description = models.CharField(max_length=100, blank=True, null=True)
    upd_date = models.DateTimeField()
    is_active = models.CharField(max_length=1, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'irm_common_master_dtl'
