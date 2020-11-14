from django.db import models

# Create your models here.
class IrmJobMaster(models.Model):
    irm_job_id = models.AutoField(primary_key=True)
    irm_job_desc = models.CharField(max_length=100, blank=True, null=True)
    irm_cust_id = models.IntegerField(blank=True, null=True)
    irm_run_date = models.DateTimeField(blank=True, null=True)
    irm_user_id = models.IntegerField(blank=True, null=True)
    irm_source_system_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'irm_job_master'
