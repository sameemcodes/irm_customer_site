from django.db import models

# Create your models here.
class DataFileTblDemo(models.Model):
    datafile_id = models.AutoField(db_column='DATAFILE_ID', primary_key=True)  # Field name made lowercase.
    filename = models.TextField(db_column='FILENAME')

    class Meta:
        managed = False
        db_table = 'datafile_tbl_demo'
