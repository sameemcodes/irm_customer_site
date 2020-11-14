# Generated by Django 3.0.3 on 2020-08-23 17:34

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='DataFileTblDemo',
            fields=[
                ('datafile_id', models.AutoField(db_column='DATAFILE_ID', primary_key=True, serialize=False)),
                ('filename', models.TextField(db_column='FILENAME')),
            ],
            options={
                'db_table': 'datafile_tbl_demo',
                'managed': False,
            },
        ),
    ]
