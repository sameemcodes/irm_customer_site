# Generated by Django 3.0.3 on 2020-08-23 17:34

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='IrmCommonMasterDtl',
            fields=[
                ('mst_dtl_id', models.AutoField(primary_key=True, serialize=False)),
                ('description', models.CharField(blank=True, max_length=100, null=True)),
                ('upd_date', models.DateTimeField()),
                ('is_active', models.CharField(blank=True, max_length=1, null=True)),
            ],
            options={
                'db_table': 'irm_common_master_dtl',
                'managed': False,
            },
        ),
    ]
