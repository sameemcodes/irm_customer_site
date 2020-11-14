from django.db import models

# Create your models here.
class Sod10T001(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cocd = models.CharField(db_column='CoCd', max_length=4, blank=True, null=True)  # Field name made lowercase.
    company_name = models.CharField(db_column='Company Name', max_length=25, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    city = models.CharField(db_column='City', max_length=25, blank=True, null=True)  # Field name made lowercase.
    ctr = models.CharField(db_column='Ctr', max_length=2, blank=True, null=True)  # Field name made lowercase.
    crcy = models.CharField(db_column='Crcy', max_length=3, blank=True, null=True)  # Field name made lowercase.
    language = models.CharField(db_column='Language', max_length=1, blank=True, null=True)  # Field name made lowercase.
    chac = models.CharField(db_column='ChAc', max_length=4, blank=True, null=True)  # Field name made lowercase.
    max_ex_dev_field = models.IntegerField(db_column='Max.ex.dev.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fv = models.CharField(db_column='FV', max_length=2, blank=True, null=True)  # Field name made lowercase.
    c = models.CharField(db_column='C', max_length=1, blank=True, null=True)  # Field name made lowercase.
    co_field = models.CharField(db_column='Co.', max_length=4, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    address = models.CharField(db_column='Address', max_length=5, blank=True, null=True)  # Field name made lowercase.
    vat_registration_no_field = models.CharField(db_column='VAT Registration No.', max_length=14, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fma = models.CharField(db_column='FMA', max_length=1, blank=True, null=True)  # Field name made lowercase.
    project_cash_mgmt_active = models.CharField(db_column='Project Cash Mgmt active', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    active = models.CharField(db_column='Active', max_length=10, blank=True, null=True)  # Field name made lowercase.
    update = models.CharField(db_column='Update', max_length=10, blank=True, null=True)  # Field name made lowercase.
    jurisdict_code = models.CharField(db_column='Jurisdict. Code', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    fundsctr_in_hr = models.IntegerField(db_column='FundsCtr in HR', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    template = models.CharField(db_column='Template', max_length=1, blank=True, null=True)  # Field name made lowercase.
    var_field = models.CharField(db_column='Var.', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cmcc = models.CharField(db_column='CMCC', max_length=10, blank=True, null=True)  # Field name made lowercase.
    cash_management_activated = models.CharField(db_column='Cash Management Activated', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    define_default_value_date = models.CharField(db_column='Define default value date', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    din = models.CharField(db_column='DiN', max_length=1, blank=True, null=True)  # Field name made lowercase.
    ccar = models.CharField(db_column='CCAr', max_length=1, blank=True, null=True)  # Field name made lowercase.
    txn = models.CharField(db_column='TxN', max_length=1, blank=True, null=True)  # Field name made lowercase.
    var_1 = models.CharField(db_column='Var.1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    business_area_fin_statements = models.CharField(db_column='Business Area Fin. Statements', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    propose_fiscal_year = models.CharField(db_column='Propose Fiscal Year', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    post_translation = models.CharField(db_column='Post Translation', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    company_code_is_productive = models.CharField(db_column='Company Code Is Productive', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    purchase_account_processing = models.CharField(db_column='Purchase Account Processing', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    jv_accounting_active = models.CharField(db_column='JV Accounting Active', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    financial_assets_mgmt_active = models.CharField(db_column='Financial Assets Mgmt active', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    no_exch_rate_diff_when_clearing_in_lc = models.CharField(db_column='No Exch. Rate Diff. When Clearing in LC', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    update_mm = models.CharField(db_column='Update MM', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    update_sd = models.CharField(db_column='Update SD', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ext_field = models.CharField(db_column='Ext.', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    orig = models.CharField(db_column='Orig', max_length=10, blank=True, null=True)  # Field name made lowercase.
    cha2 = models.CharField(db_column='ChA2', max_length=10, blank=True, null=True)  # Field name made lowercase.
    tx_grp = models.CharField(db_column='Tx Grp', max_length=4, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    xscc = models.CharField(db_column='XSCC', max_length=10, blank=True, null=True)  # Field name made lowercase.
    fstv = models.CharField(db_column='FStV', max_length=4, blank=True, null=True)  # Field name made lowercase.
    var_2 = models.CharField(db_column='Var.2', max_length=4, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    hedge_request_active = models.CharField(db_column='Hedge request active', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tax_crcy_translation = models.CharField(db_column='Tax Crcy Translation', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    wrkf = models.CharField(db_column='Wrkf', max_length=1, blank=True, null=True)  # Field name made lowercase.
    i = models.CharField(db_column='I', max_length=10, blank=True, null=True)  # Field name made lowercase.
    p = models.CharField(db_column='P', max_length=10, blank=True, null=True)  # Field name made lowercase.
    r = models.CharField(db_column='R', max_length=10, blank=True, null=True)  # Field name made lowercase.
    c1 = models.CharField(db_column='C1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    d = models.CharField(db_column='D', max_length=10, blank=True, null=True)  # Field name made lowercase.
    input_tax_code = models.CharField(db_column='Input Tax Code', max_length=2, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    output_tax_code = models.CharField(db_column='Output Tax Code', max_length=2, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    import_data_in_purchase_order = models.CharField(db_column='Import Data in Purchase Order', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    negative_postings = models.CharField(db_column='Negative Postings', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    c2 = models.CharField(db_column='C2', max_length=1, blank=True, null=True)  # Field name made lowercase.
    extended_withholding_tax_active = models.CharField(db_column='Extended Withholding Tax Active', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    prk_pst_dt = models.CharField(db_column='Prk Pst Dt', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    inflation_method = models.CharField(db_column='Inflation Method', max_length=4, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    field_status_variant = models.CharField(db_column='Field Status Variant', max_length=4, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    copying_control_goods_receipt = models.CharField(db_column='Copying control-Goods receipt', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    import_data_goods_receipt = models.CharField(db_column='Import data - Goods receipt', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    method_offsttng_acct = models.IntegerField(db_column='Method Offsttng Acct', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ba_variant = models.CharField(db_column='BA variant', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    cost_of_sales_accountg_status = models.CharField(db_column='Cost of Sales Accountg Status', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ar_pledg_act_field = models.CharField(db_column='AR Pledg. Act.', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s = models.CharField(db_column='S', max_length=10, blank=True, null=True)  # Field name made lowercase.
    surcharge_method = models.CharField(db_column='Surcharge Method', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    document_type_for_provisions_for_taxes = models.CharField(db_column='Document Type for Provisions for Taxes', max_length=2, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    document_type_for_jv_amount_correction_field = models.CharField(db_column='Document Type for JV (Amount Correction)', max_length=2, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    document_type_for_jv_tax_code_correctio = models.CharField(db_column='Document Type for JV (Tax Code Correctio', max_length=2, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    remittance_challan_document_type = models.CharField(db_column='Remittance Challan Document Type', max_length=2, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    deferred_tax_rule = models.CharField(db_column='Deferred Tax Rule', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tax_date = models.CharField(db_column='Tax Date', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    manage_posting_period_for_company_code_l = models.CharField(db_column='Manage Posting Period for Company Code/L', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    shopping_cart = models.CharField(db_column='Shopping Cart', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    hide = models.CharField(db_column='Hide', max_length=10, blank=True, null=True)  # Field name made lowercase.
    aa_derivtn = models.CharField(db_column='AA Derivtn', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-10-T001'
        app_label = 'HANA'

class Sod01Agr1252(models.Model):
    client = models.IntegerField(db_column='Client', blank=True, null=True)  # Field name made lowercase.
    role = models.CharField(db_column='Role', max_length=30, blank=True, null=True)  # Field name made lowercase.
    id = models.IntegerField(db_column='ID', blank=True, null=True)  # Field name made lowercase.
    org_level = models.CharField(db_column='Org. level', max_length=11, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_value = models.CharField(db_column='Authorization value', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_value1 = models.CharField(db_column='Authorization value1', max_length=4, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-01-AGR_1252'
        app_label = 'HANA'

class Sod02AgrTcodes(models.Model):
    client = models.IntegerField(db_column='Client', blank=True, null=True)  # Field name made lowercase.
    role = models.CharField(db_column='Role', max_length=30, blank=True, null=True)  # Field name made lowercase.
    typ = models.CharField(db_column='Typ', max_length=2, blank=True, null=True)  # Field name made lowercase.
    extended_name = models.CharField(db_column='Extended name', max_length=38, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    exclusive = models.CharField(db_column='Exclusive', max_length=10, blank=True, null=True)  # Field name made lowercase.
    transaction_input_directly = models.CharField(db_column='Transaction input directly', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    transaction_inherited_from_previous_role = models.CharField(db_column='Transaction inherited from previous role', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id = models.IntegerField(db_column='ID', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-02-AGR_TCODES'
        app_label = 'HANA'

class Sod03UsobtC(models.Model):
    name = models.CharField(db_column='Name', max_length=20, blank=True, null=True)  # Field name made lowercase.
    test_status_type_and_proposed_values_for = models.CharField(db_column='Test status type and Proposed Values for', max_length=2, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_object = models.CharField(db_column='Authorization Object', max_length=20, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld = models.CharField(db_column='Authorization Fld', max_length=20, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_value = models.CharField(db_column='Authorization Value', max_length=50, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_value1 = models.CharField(db_column='Authorization Value1', max_length=50, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    changed_by = models.CharField(db_column='Changed By', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    modification_date = models.CharField(db_column='Modification date', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    modification_time = models.CharField(db_column='Modification time', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    modification_id = models.CharField(db_column='Modification ID', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-03-USOBT_C'
        app_label = 'HANA'

class Sod04Tobj(models.Model):
    authorization_object = models.CharField(db_column='Authorization Object', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld1 = models.CharField(db_column='Authorization Fld1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld2 = models.CharField(db_column='Authorization Fld2', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld3 = models.CharField(db_column='Authorization Fld3', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld4 = models.CharField(db_column='Authorization Fld4', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld5 = models.CharField(db_column='Authorization Fld5', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld6 = models.CharField(db_column='Authorization Fld6', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld7 = models.CharField(db_column='Authorization Fld7', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld8 = models.CharField(db_column='Authorization Fld8', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld9 = models.CharField(db_column='Authorization Fld9', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_fld10 = models.CharField(db_column='Authorization Fld10', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    clss = models.CharField(db_column='Clss', max_length=4, blank=True, null=True)  # Field name made lowercase.
    user = models.CharField(db_column='User', max_length=3, blank=True, null=True)  # Field name made lowercase.
    fb = models.CharField(db_column='FB', max_length=2, blank=True, null=True)  # Field name made lowercase.
    conversion_flag = models.CharField(db_column='Conversion flag', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    text = models.CharField(db_column='Text', max_length=10, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'sod-04-tobj'
        app_label = 'HANA'

class Sod05Agr1251(models.Model):
    client = models.IntegerField(db_column='Client', blank=True, null=True)  # Field name made lowercase.
    role = models.CharField(db_column='Role', max_length=30, blank=True, null=True)  # Field name made lowercase.
    id = models.IntegerField(db_column='ID', blank=True, null=True)  # Field name made lowercase.
    object = models.CharField(db_column='Object', max_length=10, blank=True, null=True)  # Field name made lowercase.
    user_master_maint_authorization_name = models.CharField(db_column='User Master Maint.: Authorization Name', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    variant = models.CharField(db_column='Variant', max_length=10, blank=True, null=True)  # Field name made lowercase.
    field_name = models.CharField(db_column='Field name', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_value = models.CharField(db_column='Authorization value', max_length=40, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    authorization_value1 = models.CharField(db_column='Authorization value1', max_length=25, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    object_status = models.CharField(db_column='Object status', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id_whether_object_is_deleted = models.CharField(db_column='ID whether object is deleted', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id_whether_object_is_copied = models.CharField(db_column='ID whether object is copied', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id_whether_object_is_new = models.CharField(db_column='ID whether object is new', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id1 = models.IntegerField(db_column='ID1', blank=True, null=True)  # Field name made lowercase.
    col1 = models.CharField(db_column='COL1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    col2 = models.CharField(db_column='COL2', max_length=10, blank=True, null=True)  # Field name made lowercase.
    col3 = models.CharField(db_column='COL3', max_length=6, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'sod-05-agr_1251'
        app_label = 'HANA'

class Sod06AgrUsers(models.Model):
    client = models.IntegerField(db_column='Client', blank=True, null=True)  # Field name made lowercase.
    role = models.CharField(db_column='Role', max_length=24, blank=True, null=True)  # Field name made lowercase.
    user_name = models.CharField(db_column='User Name', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    start_date = models.CharField(db_column='Start date', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    end_date = models.CharField(db_column='End date', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    exclusive = models.CharField(db_column='Exclusive', max_length=10, blank=True, null=True)  # Field name made lowercase.
    date = models.CharField(db_column='Date', max_length=10, blank=True, null=True)  # Field name made lowercase.
    time = models.CharField(db_column='Time', max_length=8, blank=True, null=True)  # Field name made lowercase.
    utc_time_stamp_in_short_form_yyyymmddhh = models.CharField(db_column='UTC Time Stamp in Short Form (YYYYMMDDhh', max_length=30, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    assignment_comes_from_hr_organization_ma = models.CharField(db_column='Assignment comes from HR Organization Ma', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    assignment_comes_from_composite_role = models.CharField(db_column='Assignment Comes From Composite Role', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-06-AGR_USERS'
        app_label = 'HANA'

class Sod07Usr21(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    user_name = models.CharField(db_column='User Name', max_length=20, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    person = models.IntegerField(db_column='Person', blank=True, null=True)  # Field name made lowercase.
    addr_no_field = models.IntegerField(db_column='Addr. No.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cost_ctr = models.CharField(db_column='Cost ctr', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    start_menu = models.CharField(db_column='Start menu', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    identity_add_type = models.IntegerField(db_column='Identity Add. Type', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    business_partner_guid = models.CharField(db_column='Business Partner GUID', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    business_partner_guid1 = models.CharField(db_column='Business Partner GUID1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    user_responsible = models.CharField(db_column='User Responsible', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    description_of_the_technical_user_accoun = models.CharField(db_column='Description of the Technical User Accoun', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    identity_guid = models.CharField(db_column='Identity GUID', max_length=15, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    organization_type = models.CharField(db_column='Organization Type', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    addr_no_1 = models.CharField(db_column='Addr. No.1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-07-USR21'
        app_label = 'HANA'

class Sod08Adrp(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    person = models.CharField(db_column='Person', max_length=10, blank=True, null=True)  # Field name made lowercase.
    from_field = models.CharField(db_column='From', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed because it was a Python reserved word.
    version = models.CharField(db_column='Version', max_length=10, blank=True, null=True)  # Field name made lowercase.
    to = models.CharField(db_column='To', max_length=10, blank=True, null=True)  # Field name made lowercase.
    key = models.CharField(db_column='Key', max_length=30, blank=True, null=True)  # Field name made lowercase.
    first_name = models.CharField(db_column='First name', max_length=20, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    last_name = models.CharField(db_column='Last name', max_length=20, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    name_at_birth = models.CharField(db_column='Name at Birth', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    second_first_name_or_middle_name = models.CharField(db_column='Second First Name or Middle Name', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    second_family_name = models.CharField(db_column='Second Family Name', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    full_name = models.CharField(db_column='Full Name', max_length=40, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    conv_field = models.CharField(db_column='Conv.', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    academic_title_1 = models.CharField(db_column='Academic Title 1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    number_2nd_key = models.CharField(db_column='2nd key', max_length=10, blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it wasn't a valid Python identifier.
    prefix_1 = models.CharField(db_column='Prefix 1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    number_2nd_key1 = models.CharField(db_column='2nd key1', max_length=10, blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it wasn't a valid Python identifier.
    key1 = models.CharField(db_column='Key1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    nickname_name_used = models.CharField(db_column='Nickname/name used', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    initials = models.CharField(db_column='Initials', max_length=10, blank=True, null=True)  # Field name made lowercase.
    format = models.CharField(db_column='Format', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ctry = models.CharField(db_column='Ctry', max_length=10, blank=True, null=True)  # Field name made lowercase.
    profession = models.CharField(db_column='Profession', max_length=10, blank=True, null=True)  # Field name made lowercase.
    gender_key = models.CharField(db_column='Gender key', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    language = models.CharField(db_column='Language', max_length=1, blank=True, null=True)  # Field name made lowercase.
    key2 = models.CharField(db_column='Key2', max_length=4, blank=True, null=True)  # Field name made lowercase.
    flag_there_are_other_person_group_assig = models.CharField(db_column='Flag: There are other person group assig', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    search_term_1 = models.CharField(db_column='Search Term 1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    search_term_2 = models.CharField(db_column='Search Term 2', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    phonet_sort_field = models.CharField(db_column='Phonet. Sort.', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    number_1st_compny = models.CharField(db_column='1st Compny', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it wasn't a valid Python identifier.
    pers_addr1 = models.CharField(db_column='Pers.Addr1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    pt = models.CharField(db_column='Pt', max_length=10, blank=True, null=True)  # Field name made lowercase.
    pc = models.CharField(db_column='PC', max_length=10, blank=True, null=True)  # Field name made lowercase.
    srce = models.CharField(db_column='Srce', max_length=10, blank=True, null=True)  # Field name made lowercase.
    first_name1 = models.CharField(db_column='First name1', max_length=20, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    last_name1 = models.CharField(db_column='Last name1', max_length=20, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    name_at_birth1 = models.CharField(db_column='Name at Birth1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    lang = models.CharField(db_column='Lang', max_length=1, blank=True, null=True)  # Field name made lowercase.
    address_uuid = models.CharField(db_column='Address UUID', max_length=13, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    subsequent_uuid = models.CharField(db_column='Subsequent UUID', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    address_id_category = models.CharField(db_column='Address ID Category', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    status = models.CharField(db_column='Status', max_length=1, blank=True, null=True)  # Field name made lowercase.
    data_filter_value_for_data_aging = models.CharField(db_column='Data Filter Value for Data Aging', max_length=30, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-08-ADRP'
        app_label = 'HANA'

class Sod09AgrTexts(models.Model):
    client = models.IntegerField(db_column='Client', blank=True, null=True)  # Field name made lowercase.
    role = models.CharField(db_column='Role', max_length=30, blank=True, null=True)  # Field name made lowercase.
    language = models.CharField(db_column='Language', max_length=2, blank=True, null=True)  # Field name made lowercase.
    id = models.IntegerField(db_column='ID', blank=True, null=True)  # Field name made lowercase.
    short_role_description = models.CharField(db_column='Short Role Description', max_length=200, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-09-AGR_TEXTS'
        app_label = 'HANA'

class Sod11T001K(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    vala = models.CharField(db_column='ValA', max_length=4, blank=True, null=True)  # Field name made lowercase.
    cocd = models.CharField(db_column='CoCd', max_length=4, blank=True, null=True)  # Field name made lowercase.
    vgcd = models.IntegerField(db_column='VGCd', blank=True, null=True)  # Field name made lowercase.
    neg_stocks = models.CharField(db_column='Neg.stocks', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    mat_ledger_active = models.CharField(db_column='Mat. Ledger Active', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ml_active_compulsory_field = models.CharField(db_column='ML Active(Compulsory)', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    spva = models.CharField(db_column='SPVa', max_length=10, blank=True, null=True)  # Field name made lowercase.
    explanation_facility = models.CharField(db_column='Explanation Facility', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    revp = models.CharField(db_column='RevP', max_length=10, blank=True, null=True)  # Field name made lowercase.
    vimp = models.CharField(db_column='vIMP', max_length=10, blank=True, null=True)  # Field name made lowercase.
    price_determination = models.IntegerField(db_column='Price Determination', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    price_determination_is_binding_in_valuat = models.CharField(db_column='Price Determination Is Binding in Valuat', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    stock_correction_toler_field = models.IntegerField(db_column='Stock correction toler.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    p = models.CharField(db_column='P', max_length=10, blank=True, null=True)  # Field name made lowercase.
    recpt_value = models.CharField(db_column='Recpt value', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    two_fi_documents = models.CharField(db_column='Two FI documents', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    price_release = models.CharField(db_column='Price Release', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    actual_ccs = models.CharField(db_column='Actual CCS', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    del_costs = models.CharField(db_column='Del.costs', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    from_year = models.IntegerField(db_column='From year', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    price_release_fmp = models.CharField(db_column='Price Release FMP', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    price_release_group = models.CharField(db_column='Price Release Group', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-11-T001K'
        app_label = 'HANA'

class Sod12T024E(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    porg = models.CharField(db_column='POrg', max_length=4, blank=True, null=True)  # Field name made lowercase.
    purch_org_descr_field = models.CharField(db_column='Purch. org. descr.', max_length=17, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cocd = models.CharField(db_column='CoCd', max_length=4, blank=True, null=True)  # Field name made lowercase.
    text_name_sender_line = models.CharField(db_column='Text Name: Sender Line', max_length=14, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    text_name_letter_heading = models.CharField(db_column='Text Name: Letter Heading', max_length=14, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    text_name_footer_lines = models.CharField(db_column='Text Name: Footer Lines', max_length=14, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    text_name_complimentary_close = models.CharField(db_column='Text Name: Complimentary Close', max_length=14, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    gr = models.CharField(db_column='Gr', max_length=4, blank=True, null=True)  # Field name made lowercase.
    schema = models.CharField(db_column='Schema', max_length=6, blank=True, null=True)  # Field name made lowercase.
    effective_price_in_order_price_history = models.CharField(db_column='Effective Price in Order Price History', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    cocd1 = models.CharField(db_column='CoCd1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-12-T024E'
        app_label = 'HANA'

class Sod13T024(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    pgr = models.CharField(db_column='PGr', max_length=3, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=18, blank=True, null=True)  # Field name made lowercase.
    telephone = models.CharField(db_column='Telephone', max_length=12, blank=True, null=True)  # Field name made lowercase.
    odev = models.CharField(db_column='ODev', max_length=4, blank=True, null=True)  # Field name made lowercase.
    fax_number = models.CharField(db_column='Fax number', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    telephone1 = models.CharField(db_column='Telephone1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    extension = models.CharField(db_column='Extension', max_length=10, blank=True, null=True)  # Field name made lowercase.
    e_mail_address = models.CharField(db_column='E-Mail Address', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-13-T024'
        app_label = 'HANA'

class Sod14Tvko(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    sorg_field = models.CharField(db_column='SOrg.', max_length=4, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    curr_field = models.CharField(db_column='Curr.', max_length=3, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cocd = models.CharField(db_column='CoCd', max_length=4, blank=True, null=True)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=5, blank=True, null=True)  # Field name made lowercase.
    address_text_name = models.CharField(db_column='Address text name', max_length=11, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    letter_header_text_name = models.CharField(db_column='Letter header text name', max_length=11, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    footer_lines_text = models.CharField(db_column='Footer lines text', max_length=11, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    greeting_text_name = models.CharField(db_column='Greeting text name', max_length=14, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ref_sorg_field = models.CharField(db_column='Ref.SOrg.', max_length=4, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    custinterc = models.CharField(db_column='CustInterC', max_length=10, blank=True, null=True)  # Field name made lowercase.
    rebprcactive = models.CharField(db_column='RebPrcActive', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ca = models.CharField(db_column='Ca', max_length=1, blank=True, null=True)  # Field name made lowercase.
    porg = models.CharField(db_column='POrg', max_length=10, blank=True, null=True)  # Field name made lowercase.
    pgr = models.CharField(db_column='PGr', max_length=10, blank=True, null=True)  # Field name made lowercase.
    vendor = models.CharField(db_column='Vendor', max_length=10, blank=True, null=True)  # Field name made lowercase.
    plnt = models.CharField(db_column='Plnt', max_length=10, blank=True, null=True)  # Field name made lowercase.
    otyp = models.CharField(db_column='OTyp', max_length=10, blank=True, null=True)  # Field name made lowercase.
    cat = models.CharField(db_column='Cat', max_length=1, blank=True, null=True)  # Field name made lowercase.
    mvtyp = models.CharField(db_column='MvTyp', max_length=10, blank=True, null=True)  # Field name made lowercase.
    sloc = models.CharField(db_column='SLoc', max_length=10, blank=True, null=True)  # Field name made lowercase.
    text_sds_sender = models.CharField(db_column='Text SDS sender', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tax_code_for_sd_doc_field = models.CharField(db_column='Tax code for SD doc.', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    vat_id_determ_field = models.CharField(db_column='VAT ID Determ.', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    numbering_time = models.CharField(db_column='Numbering time', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    maximum_no_of_items_in_billing_doc_field = models.IntegerField(db_column='Maximum no. of items in billing doc.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hide_in_f4 = models.CharField(db_column='Hide in F4', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-14-TVKO'
        app_label = 'HANA'

class Sod15Tvtw(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dchl = models.CharField(db_column='DChl', max_length=2, blank=True, null=True)  # Field name made lowercase.
    hide_in_f4 = models.CharField(db_column='Hide in F4', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-15-TVTW'
        app_label = 'HANA'

class Sod16Tgsb(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    busa = models.IntegerField(db_column='BusA', blank=True, null=True)  # Field name made lowercase.
    ba_c = models.CharField(db_column='BA:C', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    xsba = models.CharField(db_column='XSBA', max_length=10, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-16-TGSB'
        app_label = 'HANA'

class Sod17Fm01(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fma = models.CharField(db_column='FMA', max_length=2, blank=True, null=True)  # Field name made lowercase.
    object_number = models.CharField(db_column='Object number', max_length=6, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    revenue_item = models.CharField(db_column='Revenue Item', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    exp_item = models.CharField(db_column='Exp.Item', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    funds_center = models.CharField(db_column='Funds Center', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    activ = models.CharField(db_column='Activ', max_length=10, blank=True, null=True)  # Field name made lowercase.
    fund_blank = models.CharField(db_column='Fund  BLANK', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    toyr = models.IntegerField(db_column='ToYr', blank=True, null=True)  # Field name made lowercase.
    func_area_blank = models.CharField(db_column='Func.Area BLANK', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    toyr4 = models.IntegerField(db_column='ToYr4', blank=True, null=True)  # Field name made lowercase.
    fund_progblank = models.CharField(db_column='Fund.ProgBLANK', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    toyr1 = models.IntegerField(db_column='ToYr1', blank=True, null=True)  # Field name made lowercase.
    grant_blank = models.CharField(db_column='Grant BLANK', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    toyr2 = models.IntegerField(db_column='ToYr2', blank=True, null=True)  # Field name made lowercase.
    hide = models.CharField(db_column='Hide', max_length=10, blank=True, null=True)  # Field name made lowercase.
    curr_field = models.CharField(db_column='Curr.', max_length=3, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l = models.CharField(db_column='L', max_length=1, blank=True, null=True)  # Field name made lowercase.
    fv = models.CharField(db_column='FV', max_length=2, blank=True, null=True)  # Field name made lowercase.
    a = models.CharField(db_column='A', max_length=10, blank=True, null=True)  # Field name made lowercase.
    to = models.IntegerField(db_column='To', blank=True, null=True)  # Field name made lowercase.
    planning_profile = models.CharField(db_column='Planning Profile', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    budget_profile = models.CharField(db_column='Budget Profile', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    fv1 = models.CharField(db_column='FV1', max_length=2, blank=True, null=True)  # Field name made lowercase.
    number_range_number = models.CharField(db_column='Number range number', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    fifm_act_field = models.CharField(db_column='FIFM Act.', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fv2 = models.CharField(db_column='FV2', max_length=10, blank=True, null=True)  # Field name made lowercase.
    budget_profile_for_fund = models.CharField(db_column='Budget profile for fund', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    statprof = models.CharField(db_column='StatProf', max_length=10, blank=True, null=True)  # Field name made lowercase.
    active_objects = models.CharField(db_column='Active Objects', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    manual_master_data_maint_field = models.CharField(db_column='Manual master data maint.', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    rank_order = models.IntegerField(db_column='Rank.Order', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    year_dependent = models.CharField(db_column='Year-dependent', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    year_dependent_commitment_itms = models.CharField(db_column='Year-Dependent Commitment Itms', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    year_dep_funds_ctrs = models.CharField(db_column='Year-Dep.Funds Ctrs', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    update_profile = models.CharField(db_column='Update Profile', max_length=3, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    update_profile1 = models.CharField(db_column='Update Profile1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    co_integrat_active = models.CharField(db_column='CO Integrat. Active', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    active_hr_from = models.IntegerField(db_column='Active HR From', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    funds_precommt_doc_type = models.CharField(db_column='Funds Precommt Doc. Type', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    funds_commitment_doc_type = models.CharField(db_column='Funds Commitment Doc.Type', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    fds_block_doc_type = models.CharField(db_column='Fds block doc.type', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    activation_process = models.IntegerField(db_column='Activation Process', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    auth_group = models.CharField(db_column='Auth.Group', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    activating_mode_ci_active = models.CharField(db_column='Activating Mode CI Active', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    field_status_variant = models.CharField(db_column='Field Status Variant', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    number_range_number1 = models.CharField(db_column='Number range number1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    revenue_item1 = models.CharField(db_column='Revenue Item1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    expenditure_item = models.CharField(db_column='Expenditure Item', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    fa_act = models.CharField(db_column='FA Act', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    no_bh = models.CharField(db_column='No BH', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    revs_incr_budget = models.CharField(db_column='Revs Incr. Budget', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    cover_eligibility = models.CharField(db_column='Cover eligibility', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    carryforward = models.CharField(db_column='Carryforward', max_length=10, blank=True, null=True)  # Field name made lowercase.
    hr_budget = models.CharField(db_column='HR budget', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    value_adjustments_required = models.CharField(db_column='Value Adjustments Required', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    funds_precommt_doc_type1 = models.CharField(db_column='Funds Precommt Doc. Type1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    funds_commitment_doc_type1 = models.CharField(db_column='Funds Commitment Doc.Type1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    budget_period_blank = models.CharField(db_column='Budget Period BLANK', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    toyr3 = models.IntegerField(db_column='ToYr3', blank=True, null=True)  # Field name made lowercase.
    rev_acct_assignments_can_be_defined_as_p = models.CharField(db_column='Rev.Acct Assignments can be Defined as P', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    no_fm_checks = models.CharField(db_column='No FM Checks', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    reno = models.IntegerField(db_column='ReNo', blank=True, null=True)  # Field name made lowercase.
    activ1 = models.CharField(db_column='Activ1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-17-FM01'
        app_label = 'HANA'

class Sod18Tka01(models.Model):
    cl_field = models.IntegerField(db_column='Cl.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    coar = models.CharField(db_column='COAr', max_length=4, blank=True, null=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=25, blank=True, null=True)  # Field name made lowercase.
    crcy = models.CharField(db_column='Crcy', max_length=3, blank=True, null=True)  # Field name made lowercase.
    chac = models.CharField(db_column='ChAc', max_length=4, blank=True, null=True)  # Field name made lowercase.
    fv = models.CharField(db_column='FV', max_length=2, blank=True, null=True)  # Field name made lowercase.
    c = models.IntegerField(db_column='C', blank=True, null=True)  # Field name made lowercase.
    log_system = models.CharField(db_column='Log.System', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ale = models.CharField(db_column='ALE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    lsys_mdata = models.CharField(db_column='LSys.MData', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    stdhierarchy = models.CharField(db_column='StdHierarchy', max_length=10, blank=True, null=True)  # Field name made lowercase.
    convert_revenue = models.CharField(db_column='Convert revenue', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    pi = models.CharField(db_column='PI', max_length=10, blank=True, null=True)  # Field name made lowercase.
    reserve = models.CharField(db_column='Reserve', max_length=10, blank=True, null=True)  # Field name made lowercase.
    opco = models.CharField(db_column='OpCo', max_length=4, blank=True, null=True)  # Field name made lowercase.
    dummy_profit_center = models.CharField(db_column='Dummy Profit Center', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    area = models.CharField(db_column='Area', max_length=10, blank=True, null=True)  # Field name made lowercase.
    prctr_ledger = models.CharField(db_column='PrCtr ledger', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    elim_intbusvol = models.CharField(db_column='Elim.IntBusVol', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    different_company_code_currency = models.CharField(db_column='Different Company Code Currency', max_length=1, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    area1 = models.CharField(db_column='Area1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    a = models.CharField(db_column='A', max_length=10, blank=True, null=True)  # Field name made lowercase.
    vend_downp = models.CharField(db_column='Vend.downp', max_length=6, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    cus_dwnpay = models.CharField(db_column='Cus.dwnpay', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    pctr_local_curr = models.CharField(db_column='PCtr Local Curr', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ct = models.CharField(db_column='CT', max_length=2, blank=True, null=True)  # Field name made lowercase.
    tc = models.CharField(db_column='TC', max_length=1, blank=True, null=True)  # Field name made lowercase.
    cc = models.IntegerField(db_column='CC', blank=True, null=True)  # Field name made lowercase.
    rld = models.CharField(db_column='RLd', max_length=10, blank=True, null=True)  # Field name made lowercase.
    doc_type = models.CharField(db_column='Doc. Type', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    fma = models.CharField(db_column='FMA', max_length=10, blank=True, null=True)  # Field name made lowercase.
    adp = models.CharField(db_column='ADP', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ale_distm_field = models.CharField(db_column='ALE distM.', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    valuatn = models.IntegerField(db_column='Valuatn', blank=True, null=True)  # Field name made lowercase.
    c_v_prof_field = models.CharField(db_column='C+V Prof.', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    act = models.CharField(db_column='Act', max_length=10, blank=True, null=True)  # Field name made lowercase.
    pers_resp_field = models.CharField(db_column='Pers. Resp.', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    account_control_when_transferring_valuat = models.CharField(db_column='Account control when transferring valuat', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    val_calc_field = models.IntegerField(db_column='Val. Calc.', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    default_profit_ctr = models.CharField(db_column='Default Profit Ctr', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    hide = models.CharField(db_column='Hide', max_length=10, blank=True, null=True)  # Field name made lowercase.
    fs_vers = models.CharField(db_column='FS Vers', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    no_stdhier = models.CharField(db_column='No StdHier', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    hier_1 = models.CharField(db_column='Hier. 1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    hier_2 = models.CharField(db_column='Hier. 2', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    no_stdhier1 = models.CharField(db_column='No StdHier1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    hier_1_1 = models.CharField(db_column='Hier. 1 1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    hier_2_1 = models.CharField(db_column='Hier. 2 1', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    alternative_use_of_object_currency = models.CharField(db_column='Alternative Use of Object Currency', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    erty = models.CharField(db_column='ERTy', max_length=10, blank=True, null=True)  # Field name made lowercase.
    tt = models.CharField(db_column='TT', max_length=10, blank=True, null=True)  # Field name made lowercase.
    source_currency_type = models.CharField(db_column='Source Currency Type', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    alternative_source_currency_equal_curre = models.CharField(db_column='Alternative Source Currency: Equal Curre', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-18-TKA01'
        app_label = 'HANA'

class Sod22AgrTimeb(models.Model):
    symandt = models.IntegerField(db_column='SYMANDT', blank=True, null=True)  # Field name made lowercase.
    agr_name = models.CharField(db_column='AGR_NAME', max_length=30, blank=True, null=True)  # Field name made lowercase.
    agr_time_b = models.CharField(db_column='AGR_TIME_B', max_length=8, blank=True, null=True)  # Field name made lowercase.
    syuname1 = models.CharField(db_column='SYUNAME1', max_length=7, blank=True, null=True)  # Field name made lowercase.
    menu_date1 = models.CharField(db_column='MENU_DATE1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    menu_time1 = models.CharField(db_column='MENU_TIME1', max_length=8, blank=True, null=True)  # Field name made lowercase.
    rstimestmp1 = models.IntegerField(db_column='RSTIMESTMP1', blank=True, null=True)  # Field name made lowercase.
    syuname2 = models.CharField(db_column='SYUNAME2', max_length=7, blank=True, null=True)  # Field name made lowercase.
    menu_date2 = models.CharField(db_column='MENU_DATE2', max_length=10, blank=True, null=True)  # Field name made lowercase.
    menu_time2 = models.CharField(db_column='MENU_TIME2', max_length=8, blank=True, null=True)  # Field name made lowercase.
    rstimestmp2 = models.IntegerField(db_column='RSTIMESTMP2', blank=True, null=True)  # Field name made lowercase.
    menu_attr = models.CharField(db_column='MENU_ATTR', max_length=10, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-22-AGR_TIMEB'
        app_label = 'HANA'

class Sod23Usr02(models.Model):
    mandt = models.IntegerField(db_column='MANDT', blank=True, null=True)  # Field name made lowercase.
    bname = models.CharField(db_column='BNAME', max_length=10, blank=True, null=True)  # Field name made lowercase.
    bcode = models.CharField(db_column='BCODE', max_length=16, blank=True, null=True)  # Field name made lowercase.
    gltgv = models.CharField(db_column='GLTGV', max_length=10, blank=True, null=True)  # Field name made lowercase.
    gltgb = models.CharField(db_column='GLTGB', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ustyp = models.CharField(db_column='USTYP', max_length=1, blank=True, null=True)  # Field name made lowercase.
    class_field = models.CharField(db_column='CLASS', max_length=5, blank=True, null=True)  # Field name made lowercase. Field renamed because it was a Python reserved word.
    locnt = models.IntegerField(db_column='LOCNT', blank=True, null=True)  # Field name made lowercase.
    uflag = models.IntegerField(db_column='UFLAG', blank=True, null=True)  # Field name made lowercase.
    accnt = models.CharField(db_column='ACCNT', max_length=10, blank=True, null=True)  # Field name made lowercase.
    aname = models.CharField(db_column='ANAME', max_length=7, blank=True, null=True)  # Field name made lowercase.
    erdat = models.CharField(db_column='ERDAT', max_length=10, blank=True, null=True)  # Field name made lowercase.
    trdat = models.CharField(db_column='TRDAT', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ltime = models.CharField(db_column='LTIME', max_length=8, blank=True, null=True)  # Field name made lowercase.
    ocod1 = models.CharField(db_column='OCOD1', max_length=16, blank=True, null=True)  # Field name made lowercase.
    bcda1 = models.CharField(db_column='BCDA1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    codv1 = models.CharField(db_column='CODV1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ocod2 = models.CharField(db_column='OCOD2', max_length=16, blank=True, null=True)  # Field name made lowercase.
    bcda2 = models.CharField(db_column='BCDA2', max_length=10, blank=True, null=True)  # Field name made lowercase.
    codv2 = models.CharField(db_column='CODV2', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ocod3 = models.CharField(db_column='OCOD3', max_length=16, blank=True, null=True)  # Field name made lowercase.
    bcda3 = models.CharField(db_column='BCDA3', max_length=10, blank=True, null=True)  # Field name made lowercase.
    codv3 = models.CharField(db_column='CODV3', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ocod4 = models.CharField(db_column='OCOD4', max_length=16, blank=True, null=True)  # Field name made lowercase.
    bcda4 = models.CharField(db_column='BCDA4', max_length=10, blank=True, null=True)  # Field name made lowercase.
    codv4 = models.CharField(db_column='CODV4', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ocod5 = models.CharField(db_column='OCOD5', max_length=16, blank=True, null=True)  # Field name made lowercase.
    bcda5 = models.CharField(db_column='BCDA5', max_length=10, blank=True, null=True)  # Field name made lowercase.
    codv5 = models.CharField(db_column='CODV5', max_length=10, blank=True, null=True)  # Field name made lowercase.
    versn = models.CharField(db_column='VERSN', max_length=10, blank=True, null=True)  # Field name made lowercase.
    codvn = models.CharField(db_column='CODVN', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tzone = models.CharField(db_column='TZONE', max_length=5, blank=True, null=True)  # Field name made lowercase.
    zbvmaster = models.CharField(db_column='ZBVMASTER', max_length=10, blank=True, null=True)  # Field name made lowercase.
    passcode = models.CharField(db_column='PASSCODE', max_length=40, blank=True, null=True)  # Field name made lowercase.
    pwdchgdate = models.CharField(db_column='PWDCHGDATE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    pwdstate = models.IntegerField(db_column='PWDSTATE', blank=True, null=True)  # Field name made lowercase.
    reserved = models.IntegerField(db_column='RESERVED', blank=True, null=True)  # Field name made lowercase.
    pwdhistory = models.IntegerField(db_column='PWDHISTORY', blank=True, null=True)  # Field name made lowercase.
    pwdlgndate = models.CharField(db_column='PWDLGNDATE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    pwdsetdate = models.CharField(db_column='PWDSETDATE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    pwdinitial = models.IntegerField(db_column='PWDINITIAL', blank=True, null=True)  # Field name made lowercase.
    pwdlockdate = models.CharField(db_column='PWDLOCKDATE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    pwdsaltedhash = models.CharField(db_column='PWDSALTEDHASH', max_length=147, blank=True, null=True)  # Field name made lowercase.
    security_policy = models.CharField(db_column='SECURITY_POLICY', max_length=10, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-23-USR02'
        app_label = 'HANA'

class Sod24Ush02(models.Model):
    mandt = models.IntegerField(db_column='MANDT', blank=True, null=True)  # Field name made lowercase.
    bname = models.CharField(db_column='BNAME', max_length=10, blank=True, null=True)  # Field name made lowercase.
    modda = models.CharField(db_column='MODDA', max_length=10, blank=True, null=True)  # Field name made lowercase.
    modti = models.CharField(db_column='MODTI', max_length=8, blank=True, null=True)  # Field name made lowercase.
    modbe = models.CharField(db_column='MODBE', max_length=9, blank=True, null=True)  # Field name made lowercase.
    tcode = models.CharField(db_column='TCODE', max_length=4, blank=True, null=True)  # Field name made lowercase.
    repid = models.CharField(db_column='REPID', max_length=32, blank=True, null=True)  # Field name made lowercase.
    bcode = models.CharField(db_column='BCODE', max_length=16, blank=True, null=True)  # Field name made lowercase.
    gltgv = models.CharField(db_column='GLTGV', max_length=10, blank=True, null=True)  # Field name made lowercase.
    gltgb = models.CharField(db_column='GLTGB', max_length=10, blank=True, null=True)  # Field name made lowercase.
    ustyp = models.CharField(db_column='USTYP', max_length=1, blank=True, null=True)  # Field name made lowercase.
    class_field = models.CharField(db_column='CLASS', max_length=5, blank=True, null=True)  # Field name made lowercase. Field renamed because it was a Python reserved word.
    uflag = models.IntegerField(db_column='UFLAG', blank=True, null=True)  # Field name made lowercase.
    accnt = models.CharField(db_column='ACCNT', max_length=10, blank=True, null=True)  # Field name made lowercase.
    passcode = models.CharField(db_column='PASSCODE', max_length=40, blank=True, null=True)  # Field name made lowercase.
    codvn = models.CharField(db_column='CODVN', max_length=1, blank=True, null=True)  # Field name made lowercase.
    pwdinitial = models.IntegerField(db_column='PWDINITIAL', blank=True, null=True)  # Field name made lowercase.
    pwdsaltedhash = models.CharField(db_column='PWDSALTEDHASH', max_length=147, blank=True, null=True)  # Field name made lowercase.
    security_policy = models.CharField(db_column='SECURITY_POLICY', max_length=10, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'SOD-24-USH02'
        app_label = 'HANA'
