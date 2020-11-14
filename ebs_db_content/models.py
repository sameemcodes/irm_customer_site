from django.db import models


class FndApplicationVl(models.Model):
    row_id = models.CharField(db_column='ROW_ID', max_length=18, blank=True, null=True)  # Field name made lowercase.
    application_id = models.IntegerField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    application_short_name = models.CharField(db_column='APPLICATION_SHORT_NAME', max_length=26, blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.CharField(db_column='LAST_UPDATE_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.CharField(db_column='CREATION_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    basepath = models.CharField(db_column='BASEPATH', max_length=13, blank=True, null=True)  # Field name made lowercase.
    application_name = models.CharField(db_column='APPLICATION_NAME', max_length=56, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=56, blank=True, null=True)  # Field name made lowercase.
    product_code = models.CharField(db_column='PRODUCT_CODE', max_length=26, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_application_vl'
        app_label = 'EBS'

class FndConcurrentProgramsVl(models.Model):
    row_id = models.TextField(db_column='ROW_ID', blank=True, null=True)  # Field name made lowercase.
    resource_consumer_group = models.TextField(db_column='RESOURCE_CONSUMER_GROUP', blank=True, null=True)  # Field name made lowercase.
    rollback_segment = models.TextField(db_column='ROLLBACK_SEGMENT', blank=True, null=True)  # Field name made lowercase.
    optimizer_mode = models.TextField(db_column='OPTIMIZER_MODE', blank=True, null=True)  # Field name made lowercase.
    security_group_id = models.TextField(db_column='SECURITY_GROUP_ID', blank=True, null=True)  # Field name made lowercase.
    application_id = models.IntegerField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    concurrent_program_id = models.IntegerField(db_column='CONCURRENT_PROGRAM_ID', blank=True, null=True)  # Field name made lowercase.
    concurrent_program_name = models.TextField(db_column='CONCURRENT_PROGRAM_NAME', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    executable_application_id = models.IntegerField(db_column='EXECUTABLE_APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    executable_id = models.IntegerField(db_column='EXECUTABLE_ID', blank=True, null=True)  # Field name made lowercase.
    execution_method_code = models.TextField(db_column='EXECUTION_METHOD_CODE', blank=True, null=True)  # Field name made lowercase.
    argument_method_code = models.IntegerField(db_column='ARGUMENT_METHOD_CODE', blank=True, null=True)  # Field name made lowercase.
    queue_control_flag = models.TextField(db_column='QUEUE_CONTROL_FLAG', blank=True, null=True)  # Field name made lowercase.
    queue_method_code = models.TextField(db_column='QUEUE_METHOD_CODE', blank=True, null=True)  # Field name made lowercase.
    request_set_flag = models.TextField(db_column='REQUEST_SET_FLAG', blank=True, null=True)  # Field name made lowercase.
    enabled_flag = models.TextField(db_column='ENABLED_FLAG', blank=True, null=True)  # Field name made lowercase.
    print_flag = models.TextField(db_column='PRINT_FLAG', blank=True, null=True)  # Field name made lowercase.
    run_alone_flag = models.TextField(db_column='RUN_ALONE_FLAG', blank=True, null=True)  # Field name made lowercase.
    srs_flag = models.TextField(db_column='SRS_FLAG', blank=True, null=True)  # Field name made lowercase.
    class_application_id = models.TextField(db_column='CLASS_APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    concurrent_class_id = models.TextField(db_column='CONCURRENT_CLASS_ID', blank=True, null=True)  # Field name made lowercase.
    execution_options = models.TextField(db_column='EXECUTION_OPTIONS', blank=True, null=True)  # Field name made lowercase.
    save_output_flag = models.TextField(db_column='SAVE_OUTPUT_FLAG', blank=True, null=True)  # Field name made lowercase.
    required_style = models.TextField(db_column='REQUIRED_STYLE', blank=True, null=True)  # Field name made lowercase.
    output_print_style = models.TextField(db_column='OUTPUT_PRINT_STYLE', blank=True, null=True)  # Field name made lowercase.
    printer_name = models.TextField(db_column='PRINTER_NAME', blank=True, null=True)  # Field name made lowercase.
    minimum_width = models.IntegerField(db_column='MINIMUM_WIDTH', blank=True, null=True)  # Field name made lowercase.
    minimum_length = models.IntegerField(db_column='MINIMUM_LENGTH', blank=True, null=True)  # Field name made lowercase.
    request_priority = models.TextField(db_column='REQUEST_PRIORITY', blank=True, null=True)  # Field name made lowercase.
    attribute_category = models.TextField(db_column='ATTRIBUTE_CATEGORY', blank=True, null=True)  # Field name made lowercase.
    attribute1 = models.TextField(db_column='ATTRIBUTE1', blank=True, null=True)  # Field name made lowercase.
    attribute2 = models.TextField(db_column='ATTRIBUTE2', blank=True, null=True)  # Field name made lowercase.
    attribute3 = models.TextField(db_column='ATTRIBUTE3', blank=True, null=True)  # Field name made lowercase.
    attribute4 = models.TextField(db_column='ATTRIBUTE4', blank=True, null=True)  # Field name made lowercase.
    attribute5 = models.TextField(db_column='ATTRIBUTE5', blank=True, null=True)  # Field name made lowercase.
    attribute6 = models.TextField(db_column='ATTRIBUTE6', blank=True, null=True)  # Field name made lowercase.
    attribute7 = models.TextField(db_column='ATTRIBUTE7', blank=True, null=True)  # Field name made lowercase.
    attribute8 = models.TextField(db_column='ATTRIBUTE8', blank=True, null=True)  # Field name made lowercase.
    attribute9 = models.TextField(db_column='ATTRIBUTE9', blank=True, null=True)  # Field name made lowercase.
    attribute10 = models.TextField(db_column='ATTRIBUTE10', blank=True, null=True)  # Field name made lowercase.
    attribute11 = models.TextField(db_column='ATTRIBUTE11', blank=True, null=True)  # Field name made lowercase.
    attribute12 = models.TextField(db_column='ATTRIBUTE12', blank=True, null=True)  # Field name made lowercase.
    attribute13 = models.TextField(db_column='ATTRIBUTE13', blank=True, null=True)  # Field name made lowercase.
    attribute14 = models.TextField(db_column='ATTRIBUTE14', blank=True, null=True)  # Field name made lowercase.
    attribute15 = models.TextField(db_column='ATTRIBUTE15', blank=True, null=True)  # Field name made lowercase.
    iprog_id = models.IntegerField(db_column='IPROG_ID', blank=True, null=True)  # Field name made lowercase.
    output_file_type = models.TextField(db_column='OUTPUT_FILE_TYPE', blank=True, null=True)  # Field name made lowercase.
    enable_trace = models.TextField(db_column='ENABLE_TRACE', blank=True, null=True)  # Field name made lowercase.
    restart = models.TextField(db_column='RESTART', blank=True, null=True)  # Field name made lowercase.
    nls_compliant = models.TextField(db_column='NLS_COMPLIANT', blank=True, null=True)  # Field name made lowercase.
    icon_name = models.TextField(db_column='ICON_NAME', blank=True, null=True)  # Field name made lowercase.
    cd_parameter = models.TextField(db_column='CD_PARAMETER', blank=True, null=True)  # Field name made lowercase.
    increment_proc = models.TextField(db_column='INCREMENT_PROC', blank=True, null=True)  # Field name made lowercase.
    mls_executable_app_id = models.TextField(db_column='MLS_EXECUTABLE_APP_ID', blank=True, null=True)  # Field name made lowercase.
    mls_executable_id = models.TextField(db_column='MLS_EXECUTABLE_ID', blank=True, null=True)  # Field name made lowercase.
    enable_time_statistics = models.TextField(db_column='ENABLE_TIME_STATISTICS', blank=True, null=True)  # Field name made lowercase.
    refresh_portlet = models.TextField(db_column='REFRESH_PORTLET', blank=True, null=True)  # Field name made lowercase.
    program_type = models.TextField(db_column='PROGRAM_TYPE', blank=True, null=True)  # Field name made lowercase.
    activity_summarizer = models.TextField(db_column='ACTIVITY_SUMMARIZER', blank=True, null=True)  # Field name made lowercase.
    request_sch_interval = models.TextField(db_column='REQUEST_SCH_INTERVAL', blank=True, null=True)  # Field name made lowercase.
    allow_multiple_pending_request = models.TextField(db_column='ALLOW_MULTIPLE_PENDING_REQUEST', blank=True, null=True)  # Field name made lowercase.
    delete_log_file = models.TextField(db_column='DELETE_LOG_FILE', blank=True, null=True)  # Field name made lowercase.
    template_appl_short_name = models.TextField(db_column='TEMPLATE_APPL_SHORT_NAME', blank=True, null=True)  # Field name made lowercase.
    template_code = models.TextField(db_column='TEMPLATE_CODE', blank=True, null=True)  # Field name made lowercase.
    recalc_parameters = models.TextField(db_column='RECALC_PARAMETERS', blank=True, null=True)  # Field name made lowercase.
    multi_org_category = models.TextField(db_column='MULTI_ORG_CATEGORY', blank=True, null=True)  # Field name made lowercase.
    user_concurrent_program_name = models.TextField(db_column='USER_CONCURRENT_PROGRAM_NAME', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_concurrent_programs_vl'
        app_label = 'EBS'

class FndDataGroups(models.Model):
    data_group_id = models.IntegerField(db_column='DATA_GROUP_ID', blank=True, null=True)  # Field name made lowercase.
    data_group_name = models.TextField(db_column='DATA_GROUP_NAME', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    default_group_flag = models.TextField(db_column='DEFAULT_GROUP_FLAG', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_data_groups'
        app_label = 'EBS'

class FndFormFunctionsVl(models.Model):
    row_id = models.TextField(db_column='ROW_ID', blank=True, null=True)  # Field name made lowercase.
    web_host_name = models.TextField(db_column='WEB_HOST_NAME', blank=True, null=True)  # Field name made lowercase.
    web_agent_name = models.TextField(db_column='WEB_AGENT_NAME', blank=True, null=True)  # Field name made lowercase.
    web_html_call = models.TextField(db_column='WEB_HTML_CALL', blank=True, null=True)  # Field name made lowercase.
    web_encrypt_parameters = models.TextField(db_column='WEB_ENCRYPT_PARAMETERS', blank=True, null=True)  # Field name made lowercase.
    web_secured = models.TextField(db_column='WEB_SECURED', blank=True, null=True)  # Field name made lowercase.
    web_icon = models.TextField(db_column='WEB_ICON', blank=True, null=True)  # Field name made lowercase.
    function_id = models.IntegerField(db_column='FUNCTION_ID', blank=True, null=True)  # Field name made lowercase.
    function_name = models.TextField(db_column='FUNCTION_NAME', blank=True, null=True)  # Field name made lowercase.
    application_id = models.IntegerField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    form_id = models.IntegerField(db_column='FORM_ID', blank=True, null=True)  # Field name made lowercase.
    parameters = models.TextField(db_column='PARAMETERS', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    type = models.TextField(db_column='TYPE', blank=True, null=True)  # Field name made lowercase.
    user_function_name = models.TextField(db_column='USER_FUNCTION_NAME', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    object_id = models.TextField(db_column='OBJECT_ID', blank=True, null=True)  # Field name made lowercase.
    region_application_id = models.TextField(db_column='REGION_APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    region_code = models.TextField(db_column='REGION_CODE', blank=True, null=True)  # Field name made lowercase.
    maintenance_mode_support = models.TextField(db_column='MAINTENANCE_MODE_SUPPORT', blank=True, null=True)  # Field name made lowercase.
    context_dependence = models.TextField(db_column='CONTEXT_DEPENDENCE', blank=True, null=True)  # Field name made lowercase.
    jrad_ref_path = models.TextField(db_column='JRAD_REF_PATH', blank=True, null=True)  # Field name made lowercase.
    irep_method_name = models.TextField(db_column='IREP_METHOD_NAME', blank=True, null=True)  # Field name made lowercase.
    irep_overload_sequence = models.TextField(db_column='IREP_OVERLOAD_SEQUENCE', blank=True, null=True)  # Field name made lowercase.
    irep_scope = models.TextField(db_column='IREP_SCOPE', blank=True, null=True)  # Field name made lowercase.
    irep_lifecycle = models.TextField(db_column='IREP_LIFECYCLE', blank=True, null=True)  # Field name made lowercase.
    irep_description = models.TextField(db_column='IREP_DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    irep_compatibility = models.TextField(db_column='IREP_COMPATIBILITY', blank=True, null=True)  # Field name made lowercase.
    irep_inbound_xml_description = models.TextField(db_column='IREP_INBOUND_XML_DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    irep_outbound_xml_description = models.TextField(db_column='IREP_OUTBOUND_XML_DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    irep_synchro = models.TextField(db_column='IREP_SYNCHRO', blank=True, null=True)  # Field name made lowercase.
    irep_direction = models.TextField(db_column='IREP_DIRECTION', blank=True, null=True)  # Field name made lowercase.
    irep_assoc_function_name = models.TextField(db_column='IREP_ASSOC_FUNCTION_NAME', blank=True, null=True)  # Field name made lowercase.
    irep_class_id = models.TextField(db_column='IREP_CLASS_ID', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_form_functions_vl'
        app_label = 'EBS'

class FndMenuEntriesVl(models.Model):
    row_id = models.TextField(db_column='ROW_ID', blank=True, null=True)  # Field name made lowercase.
    menu_id = models.IntegerField(db_column='MENU_ID', blank=True, null=True)  # Field name made lowercase.
    entry_sequence = models.IntegerField(db_column='ENTRY_SEQUENCE', blank=True, null=True)  # Field name made lowercase.
    sub_menu_id = models.TextField(db_column='SUB_MENU_ID', blank=True, null=True)  # Field name made lowercase.
    function_id = models.IntegerField(db_column='FUNCTION_ID', blank=True, null=True)  # Field name made lowercase.
    grant_flag = models.TextField(db_column='GRANT_FLAG', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    prompt = models.TextField(db_column='PROMPT', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_menu_entries_vl'
        app_label = 'EBS'

class FndMenusVl(models.Model):
    row_id = models.TextField(db_column='ROW_ID', blank=True, null=True)  # Field name made lowercase.
    menu_id = models.IntegerField(db_column='MENU_ID', blank=True, null=True)  # Field name made lowercase.
    menu_name = models.TextField(db_column='MENU_NAME', blank=True, null=True)  # Field name made lowercase.
    type = models.TextField(db_column='TYPE', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    user_menu_name = models.TextField(db_column='USER_MENU_NAME', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_menus_vl'
        app_label = 'EBS'


class FndNodes(models.Model):
    node_name = models.TextField(db_column='NODE_NAME', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    platform_code = models.IntegerField(db_column='PLATFORM_CODE', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    basepath = models.TextField(db_column='BASEPATH', blank=True, null=True)  # Field name made lowercase.
    support_cp = models.TextField(db_column='SUPPORT_CP', blank=True, null=True)  # Field name made lowercase.
    support_forms = models.TextField(db_column='SUPPORT_FORMS', blank=True, null=True)  # Field name made lowercase.
    support_web = models.TextField(db_column='SUPPORT_WEB', blank=True, null=True)  # Field name made lowercase.
    support_admin = models.TextField(db_column='SUPPORT_ADMIN', blank=True, null=True)  # Field name made lowercase.
    status = models.TextField(db_column='STATUS', blank=True, null=True)  # Field name made lowercase.
    ping_response = models.TextField(db_column='PING_RESPONSE', blank=True, null=True)  # Field name made lowercase.
    last_monitored_time = models.TextField(db_column='LAST_MONITORED_TIME', blank=True, null=True)  # Field name made lowercase.
    node_mode = models.TextField(db_column='NODE_MODE', blank=True, null=True)  # Field name made lowercase.
    node_id = models.IntegerField(db_column='NODE_ID', blank=True, null=True)  # Field name made lowercase.
    server_id = models.TextField(db_column='SERVER_ID', blank=True, null=True)  # Field name made lowercase.
    server_address = models.TextField(db_column='SERVER_ADDRESS', blank=True, null=True)  # Field name made lowercase.
    host = models.TextField(db_column='HOST', blank=True, null=True)  # Field name made lowercase.
    domain = models.TextField(db_column='DOMAIN', blank=True, null=True)  # Field name made lowercase.
    webhost = models.TextField(db_column='WEBHOST', blank=True, null=True)  # Field name made lowercase.
    virtual_ip = models.TextField(db_column='VIRTUAL_IP', blank=True, null=True)  # Field name made lowercase.
    support_db = models.TextField(db_column='SUPPORT_DB', blank=True, null=True)  # Field name made lowercase.
    appltop_id = models.TextField(db_column='APPLTOP_ID', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_nodes'
        app_label = 'EBS'

class FndProfileOptionValues(models.Model):
    application_id = models.IntegerField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    profile_option_id = models.IntegerField(db_column='PROFILE_OPTION_ID', blank=True, null=True)  # Field name made lowercase.
    level_id = models.IntegerField(db_column='LEVEL_ID', blank=True, null=True)  # Field name made lowercase.
    level_value = models.IntegerField(db_column='LEVEL_VALUE', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    profile_option_value = models.TextField(db_column='PROFILE_OPTION_VALUE', blank=True, null=True)  # Field name made lowercase.
    level_value_application_id = models.TextField(db_column='LEVEL_VALUE_APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    level_value2 = models.TextField(db_column='LEVEL_VALUE2', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_profile_option_values'
        app_label = 'EBS'

class FndProfileOptions(models.Model):
    application_id = models.TextField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    profile_option_id = models.TextField(db_column='PROFILE_OPTION_ID', blank=True, null=True)  # Field name made lowercase.
    profile_option_name = models.TextField(db_column='PROFILE_OPTION_NAME', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    write_allowed_flag = models.TextField(db_column='WRITE_ALLOWED_FLAG', blank=True, null=True)  # Field name made lowercase.
    read_allowed_flag = models.TextField(db_column='READ_ALLOWED_FLAG', blank=True, null=True)  # Field name made lowercase.
    user_changeable_flag = models.TextField(db_column='USER_CHANGEABLE_FLAG', blank=True, null=True)  # Field name made lowercase.
    user_visible_flag = models.TextField(db_column='USER_VISIBLE_FLAG', blank=True, null=True)  # Field name made lowercase.
    site_enabled_flag = models.TextField(db_column='SITE_ENABLED_FLAG', blank=True, null=True)  # Field name made lowercase.
    site_update_allowed_flag = models.TextField(db_column='SITE_UPDATE_ALLOWED_FLAG', blank=True, null=True)  # Field name made lowercase.
    app_enabled_flag = models.TextField(db_column='APP_ENABLED_FLAG', blank=True, null=True)  # Field name made lowercase.
    app_update_allowed_flag = models.TextField(db_column='APP_UPDATE_ALLOWED_FLAG', blank=True, null=True)  # Field name made lowercase.
    resp_enabled_flag = models.TextField(db_column='RESP_ENABLED_FLAG', blank=True, null=True)  # Field name made lowercase.
    resp_update_allowed_flag = models.TextField(db_column='RESP_UPDATE_ALLOWED_FLAG', blank=True, null=True)  # Field name made lowercase.
    user_enabled_flag = models.TextField(db_column='USER_ENABLED_FLAG', blank=True, null=True)  # Field name made lowercase.
    user_update_allowed_flag = models.TextField(db_column='USER_UPDATE_ALLOWED_FLAG', blank=True, null=True)  # Field name made lowercase.
    start_date_active = models.TextField(db_column='START_DATE_ACTIVE', blank=True, null=True)  # Field name made lowercase.
    sql_validation = models.TextField(db_column='SQL_VALIDATION', blank=True, null=True)  # Field name made lowercase.
    end_date_active = models.TextField(db_column='END_DATE_ACTIVE', blank=True, null=True)  # Field name made lowercase.
    hierarchy_type = models.TextField(db_column='HIERARCHY_TYPE', blank=True, null=True)  # Field name made lowercase.
    server_enabled_flag = models.TextField(db_column='SERVER_ENABLED_FLAG', blank=True, null=True)  # Field name made lowercase.
    org_enabled_flag = models.TextField(db_column='ORG_ENABLED_FLAG', blank=True, null=True)  # Field name made lowercase.
    server_update_allowed_flag = models.TextField(db_column='SERVER_UPDATE_ALLOWED_FLAG', blank=True, null=True)  # Field name made lowercase.
    org_update_allowed_flag = models.TextField(db_column='ORG_UPDATE_ALLOWED_FLAG', blank=True, null=True)  # Field name made lowercase.
    serverresp_enabled_flag = models.TextField(db_column='SERVERRESP_ENABLED_FLAG', blank=True, null=True)  # Field name made lowercase.
    serverresp_update_allowed_flag = models.TextField(db_column='SERVERRESP_UPDATE_ALLOWED_FLAG', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_profile_options'
        app_label = 'EBS'

class FndProfileOptionsTl(models.Model):
    profile_option_name = models.CharField(db_column='PROFILE_OPTION_NAME', max_length=67, blank=True, null=True)  # Field name made lowercase.
    language = models.CharField(db_column='LANGUAGE', max_length=2, blank=True, null=True)  # Field name made lowercase.
    user_profile_option_name = models.CharField(db_column='USER_PROFILE_OPTION_NAME', max_length=108, blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.CharField(db_column='CREATION_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.CharField(db_column='LAST_UPDATE_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=237, blank=True, null=True)  # Field name made lowercase.
    source_lang = models.CharField(db_column='SOURCE_LANG', max_length=2, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'fnd_profile_options_tl'
        app_label = 'EBS'

class FndProfileOptionsVl(models.Model):
    row_id = models.CharField(db_column='ROW_ID', max_length=18, blank=True, null=True)  # Field name made lowercase.
    application_id = models.IntegerField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    profile_option_id = models.IntegerField(db_column='PROFILE_OPTION_ID', blank=True, null=True)  # Field name made lowercase.
    profile_option_name = models.CharField(db_column='PROFILE_OPTION_NAME', max_length=67, blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.CharField(db_column='LAST_UPDATE_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.CharField(db_column='CREATION_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    write_allowed_flag = models.CharField(db_column='WRITE_ALLOWED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    read_allowed_flag = models.CharField(db_column='READ_ALLOWED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    user_changeable_flag = models.CharField(db_column='USER_CHANGEABLE_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    user_visible_flag = models.CharField(db_column='USER_VISIBLE_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    site_enabled_flag = models.CharField(db_column='SITE_ENABLED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    site_update_allowed_flag = models.CharField(db_column='SITE_UPDATE_ALLOWED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    app_enabled_flag = models.CharField(db_column='APP_ENABLED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    app_update_allowed_flag = models.CharField(db_column='APP_UPDATE_ALLOWED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    resp_enabled_flag = models.CharField(db_column='RESP_ENABLED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    resp_update_allowed_flag = models.CharField(db_column='RESP_UPDATE_ALLOWED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    user_enabled_flag = models.CharField(db_column='USER_ENABLED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    user_update_allowed_flag = models.CharField(db_column='USER_UPDATE_ALLOWED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    start_date_active = models.CharField(db_column='START_DATE_ACTIVE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    sql_validation = models.CharField(db_column='SQL_VALIDATION', max_length=1774, blank=True, null=True)  # Field name made lowercase.
    end_date_active = models.CharField(db_column='END_DATE_ACTIVE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    user_profile_option_name = models.CharField(db_column='USER_PROFILE_OPTION_NAME', max_length=108, blank=True, null=True)  # Field name made lowercase.
    hierarchy_type = models.CharField(db_column='HIERARCHY_TYPE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    server_enabled_flag = models.CharField(db_column='SERVER_ENABLED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    server_update_allowed_flag = models.CharField(db_column='SERVER_UPDATE_ALLOWED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    org_enabled_flag = models.CharField(db_column='ORG_ENABLED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    org_update_allowed_flag = models.CharField(db_column='ORG_UPDATE_ALLOWED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    serverresp_enabled_flag = models.CharField(db_column='SERVERRESP_ENABLED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    serverresp_update_allowed_flag = models.CharField(db_column='SERVERRESP_UPDATE_ALLOWED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=237, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'fnd_profile_options_vl'
        app_label = 'EBS'

class FndRequestGroupUnits(models.Model):
    application_id = models.IntegerField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    request_group_id = models.IntegerField(db_column='REQUEST_GROUP_ID', blank=True, null=True)  # Field name made lowercase.
    request_unit_type = models.CharField(db_column='REQUEST_UNIT_TYPE', max_length=1, blank=True, null=True)  # Field name made lowercase.
    unit_application_id = models.IntegerField(db_column='UNIT_APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    request_unit_id = models.IntegerField(db_column='REQUEST_UNIT_ID', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.CharField(db_column='LAST_UPDATE_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.CharField(db_column='CREATION_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_request_group_units'
        app_label = 'EBS'

class FndRequestGroups(models.Model):
    application_id = models.IntegerField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    request_group_id = models.IntegerField(db_column='REQUEST_GROUP_ID', blank=True, null=True)  # Field name made lowercase.
    request_group_name = models.TextField(db_column='REQUEST_GROUP_NAME', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    request_group_code = models.TextField(db_column='REQUEST_GROUP_CODE', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_request_groups'
        app_label = 'EBS'

class FndRespFunctions(models.Model):
    application_id = models.IntegerField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    responsibility_id = models.IntegerField(db_column='RESPONSIBILITY_ID', blank=True, null=True)  # Field name made lowercase.
    action_id = models.IntegerField(db_column='ACTION_ID', blank=True, null=True)  # Field name made lowercase.
    rule_type = models.TextField(db_column='RULE_TYPE', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_resp_functions'
        app_label = 'EBS'

class FndResponsibilityVl(models.Model):
    row_id = models.TextField(db_column='ROW_ID', blank=True, null=True)  # Field name made lowercase.
    web_host_name = models.TextField(db_column='WEB_HOST_NAME', blank=True, null=True)  # Field name made lowercase.
    web_agent_name = models.TextField(db_column='WEB_AGENT_NAME', blank=True, null=True)  # Field name made lowercase.
    application_id = models.IntegerField(db_column='APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    responsibility_id = models.IntegerField(db_column='RESPONSIBILITY_ID', blank=True, null=True)  # Field name made lowercase.
    responsibility_key = models.TextField(db_column='RESPONSIBILITY_KEY', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    data_group_application_id = models.IntegerField(db_column='DATA_GROUP_APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    data_group_id = models.IntegerField(db_column='DATA_GROUP_ID', blank=True, null=True)  # Field name made lowercase.
    menu_id = models.IntegerField(db_column='MENU_ID', blank=True, null=True)  # Field name made lowercase.
    start_date = models.TextField(db_column='START_DATE', blank=True, null=True)  # Field name made lowercase.
    end_date = models.TextField(db_column='END_DATE', blank=True, null=True)  # Field name made lowercase.
    group_application_id = models.TextField(db_column='GROUP_APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    request_group_id = models.TextField(db_column='REQUEST_GROUP_ID', blank=True, null=True)  # Field name made lowercase.
    version = models.IntegerField(db_column='VERSION', blank=True, null=True)  # Field name made lowercase.
    responsibility_name = models.TextField(db_column='RESPONSIBILITY_NAME', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_responsibility_vl'
        app_label = 'EBS'

class FndUser(models.Model):
    user_id = models.IntegerField(db_column='USER_ID', blank=True, null=True)  # Field name made lowercase.
    user_name = models.CharField(db_column='USER_NAME', max_length=132, blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.CharField(db_column='LAST_UPDATE_DATE', max_length=100, blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.CharField(db_column='CREATION_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    created_by = models.CharField(db_column='CREATED_BY', max_length=6, blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.CharField(db_column='LAST_UPDATE_LOGIN', max_length=9, blank=True, null=True)  # Field name made lowercase.
    encrypted_foundation_password = models.CharField(db_column='ENCRYPTED_FOUNDATION_PASSWORD', max_length=100, blank=True, null=True)  # Field name made lowercase.
    encrypted_user_password = models.CharField(db_column='ENCRYPTED_USER_PASSWORD', max_length=100, blank=True, null=True)  # Field name made lowercase.
    session_number = models.CharField(db_column='SESSION_NUMBER', max_length=6, blank=True, null=True)  # Field name made lowercase.
    start_date = models.CharField(db_column='START_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    end_date = models.CharField(db_column='END_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=184, blank=True, null=True)  # Field name made lowercase.
    last_logon_date = models.CharField(db_column='LAST_LOGON_DATE', max_length=16, blank=True, null=True)  # Field name made lowercase.
    password_date = models.CharField(db_column='PASSWORD_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    password_accesses_left = models.CharField(db_column='PASSWORD_ACCESSES_LEFT', max_length=6, blank=True, null=True)  # Field name made lowercase.
    password_lifespan_accesses = models.CharField(db_column='PASSWORD_LIFESPAN_ACCESSES', max_length=10, blank=True, null=True)  # Field name made lowercase.
    password_lifespan_days = models.CharField(db_column='PASSWORD_LIFESPAN_DAYS', max_length=3, blank=True, null=True)  # Field name made lowercase.
    employee_id = models.CharField(db_column='EMPLOYEE_ID', max_length=6, blank=True, null=True)  # Field name made lowercase.
    email_address = models.CharField(db_column='EMAIL_ADDRESS', max_length=45, blank=True, null=True)  # Field name made lowercase.
    fax = models.CharField(db_column='FAX', max_length=17, blank=True, null=True)  # Field name made lowercase.
    customer_id = models.CharField(db_column='CUSTOMER_ID', max_length=7, blank=True, null=True)  # Field name made lowercase.
    supplier_id = models.CharField(db_column='SUPPLIER_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    web_password = models.CharField(db_column='WEB_PASSWORD', max_length=10, blank=True, null=True)  # Field name made lowercase.
    user_guid = models.CharField(db_column='USER_GUID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    gcn_code_combination_id = models.CharField(db_column='GCN_CODE_COMBINATION_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    person_party_id = models.CharField(db_column='PERSON_PARTY_ID', max_length=7, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_user'
        app_label = 'EBS'

class FndUserRespGroupsDirect(models.Model):
    user_id = models.IntegerField(db_column='USER_ID', blank=True, null=True)  # Field name made lowercase.
    responsibility_id = models.IntegerField(db_column='RESPONSIBILITY_ID', blank=True, null=True)  # Field name made lowercase.
    responsibility_application_id = models.IntegerField(db_column='RESPONSIBILITY_APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    security_group_id = models.IntegerField(db_column='SECURITY_GROUP_ID', blank=True, null=True)  # Field name made lowercase.
    start_date = models.CharField(db_column='START_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    end_date = models.CharField(db_column='END_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    created_by = models.CharField(db_column='CREATED_BY', max_length=6, blank=True, null=True)  # Field name made lowercase.
    creation_date = models.CharField(db_column='CREATION_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.CharField(db_column='LAST_UPDATE_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=73, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'fnd_user_resp_groups_direct'
        app_label = 'EBS'

class GlAccessSets(models.Model):
    access_set_id = models.IntegerField(db_column='ACCESS_SET_ID', blank=True, null=True)  # Field name made lowercase.
    name = models.TextField(db_column='NAME', blank=True, null=True)  # Field name made lowercase.
    security_segment_code = models.TextField(db_column='SECURITY_SEGMENT_CODE', blank=True, null=True)  # Field name made lowercase.
    enabled_flag = models.TextField(db_column='ENABLED_FLAG', blank=True, null=True)  # Field name made lowercase.
    chart_of_accounts_id = models.IntegerField(db_column='CHART_OF_ACCOUNTS_ID', blank=True, null=True)  # Field name made lowercase.
    period_set_name = models.TextField(db_column='PERIOD_SET_NAME', blank=True, null=True)  # Field name made lowercase.
    accounted_period_type = models.IntegerField(db_column='ACCOUNTED_PERIOD_TYPE', blank=True, null=True)  # Field name made lowercase.
    automatically_created_flag = models.TextField(db_column='AUTOMATICALLY_CREATED_FLAG', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    secured_seg_value_set_id = models.TextField(db_column='SECURED_SEG_VALUE_SET_ID', blank=True, null=True)  # Field name made lowercase.
    default_ledger_id = models.IntegerField(db_column='DEFAULT_LEDGER_ID', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    context = models.TextField(db_column='CONTEXT', blank=True, null=True)  # Field name made lowercase.
    attribute1 = models.TextField(db_column='ATTRIBUTE1', blank=True, null=True)  # Field name made lowercase.
    attribute2 = models.TextField(db_column='ATTRIBUTE2', blank=True, null=True)  # Field name made lowercase.
    attribute3 = models.TextField(db_column='ATTRIBUTE3', blank=True, null=True)  # Field name made lowercase.
    attribute4 = models.TextField(db_column='ATTRIBUTE4', blank=True, null=True)  # Field name made lowercase.
    attribute5 = models.TextField(db_column='ATTRIBUTE5', blank=True, null=True)  # Field name made lowercase.
    attribute6 = models.TextField(db_column='ATTRIBUTE6', blank=True, null=True)  # Field name made lowercase.
    attribute7 = models.TextField(db_column='ATTRIBUTE7', blank=True, null=True)  # Field name made lowercase.
    attribute8 = models.TextField(db_column='ATTRIBUTE8', blank=True, null=True)  # Field name made lowercase.
    attribute9 = models.TextField(db_column='ATTRIBUTE9', blank=True, null=True)  # Field name made lowercase.
    attribute10 = models.TextField(db_column='ATTRIBUTE10', blank=True, null=True)  # Field name made lowercase.
    attribute11 = models.TextField(db_column='ATTRIBUTE11', blank=True, null=True)  # Field name made lowercase.
    attribute12 = models.TextField(db_column='ATTRIBUTE12', blank=True, null=True)  # Field name made lowercase.
    attribute13 = models.TextField(db_column='ATTRIBUTE13', blank=True, null=True)  # Field name made lowercase.
    attribute14 = models.TextField(db_column='ATTRIBUTE14', blank=True, null=True)  # Field name made lowercase.
    attribute15 = models.TextField(db_column='ATTRIBUTE15', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'gl_access_sets'
        app_label = 'EBS'

class HrAllOrganizationUnits(models.Model):
    organization_id = models.IntegerField(db_column='ORGANIZATION_ID', blank=True, null=True)  # Field name made lowercase.
    business_group_id = models.IntegerField(db_column='BUSINESS_GROUP_ID', blank=True, null=True)  # Field name made lowercase.
    cost_allocation_keyflex_id = models.TextField(db_column='COST_ALLOCATION_KEYFLEX_ID', blank=True, null=True)  # Field name made lowercase.
    location_id = models.TextField(db_column='LOCATION_ID', blank=True, null=True)  # Field name made lowercase.
    soft_coding_keyflex_id = models.TextField(db_column='SOFT_CODING_KEYFLEX_ID', blank=True, null=True)  # Field name made lowercase.
    date_from = models.TextField(db_column='DATE_FROM', blank=True, null=True)  # Field name made lowercase.
    name = models.TextField(db_column='NAME', blank=True, null=True)  # Field name made lowercase.
    date_to = models.TextField(db_column='DATE_TO', blank=True, null=True)  # Field name made lowercase.
    internal_external_flag = models.TextField(db_column='INTERNAL_EXTERNAL_FLAG', blank=True, null=True)  # Field name made lowercase.
    internal_address_line = models.TextField(db_column='INTERNAL_ADDRESS_LINE', blank=True, null=True)  # Field name made lowercase.
    type = models.TextField(db_column='TYPE', blank=True, null=True)  # Field name made lowercase.
    request_id = models.TextField(db_column='REQUEST_ID', blank=True, null=True)  # Field name made lowercase.
    program_application_id = models.TextField(db_column='PROGRAM_APPLICATION_ID', blank=True, null=True)  # Field name made lowercase.
    program_id = models.TextField(db_column='PROGRAM_ID', blank=True, null=True)  # Field name made lowercase.
    program_update_date = models.TextField(db_column='PROGRAM_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    attribute_category = models.TextField(db_column='ATTRIBUTE_CATEGORY', blank=True, null=True)  # Field name made lowercase.
    attribute1 = models.TextField(db_column='ATTRIBUTE1', blank=True, null=True)  # Field name made lowercase.
    attribute2 = models.TextField(db_column='ATTRIBUTE2', blank=True, null=True)  # Field name made lowercase.
    attribute3 = models.TextField(db_column='ATTRIBUTE3', blank=True, null=True)  # Field name made lowercase.
    attribute4 = models.TextField(db_column='ATTRIBUTE4', blank=True, null=True)  # Field name made lowercase.
    attribute5 = models.TextField(db_column='ATTRIBUTE5', blank=True, null=True)  # Field name made lowercase.
    attribute6 = models.TextField(db_column='ATTRIBUTE6', blank=True, null=True)  # Field name made lowercase.
    attribute7 = models.TextField(db_column='ATTRIBUTE7', blank=True, null=True)  # Field name made lowercase.
    attribute8 = models.TextField(db_column='ATTRIBUTE8', blank=True, null=True)  # Field name made lowercase.
    attribute9 = models.TextField(db_column='ATTRIBUTE9', blank=True, null=True)  # Field name made lowercase.
    attribute10 = models.TextField(db_column='ATTRIBUTE10', blank=True, null=True)  # Field name made lowercase.
    attribute11 = models.TextField(db_column='ATTRIBUTE11', blank=True, null=True)  # Field name made lowercase.
    attribute12 = models.TextField(db_column='ATTRIBUTE12', blank=True, null=True)  # Field name made lowercase.
    attribute13 = models.TextField(db_column='ATTRIBUTE13', blank=True, null=True)  # Field name made lowercase.
    attribute14 = models.TextField(db_column='ATTRIBUTE14', blank=True, null=True)  # Field name made lowercase.
    attribute15 = models.TextField(db_column='ATTRIBUTE15', blank=True, null=True)  # Field name made lowercase.
    attribute16 = models.TextField(db_column='ATTRIBUTE16', blank=True, null=True)  # Field name made lowercase.
    attribute17 = models.TextField(db_column='ATTRIBUTE17', blank=True, null=True)  # Field name made lowercase.
    attribute18 = models.TextField(db_column='ATTRIBUTE18', blank=True, null=True)  # Field name made lowercase.
    attribute19 = models.TextField(db_column='ATTRIBUTE19', blank=True, null=True)  # Field name made lowercase.
    attribute20 = models.TextField(db_column='ATTRIBUTE20', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.TextField(db_column='LAST_UPDATE_DATE', blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    created_by = models.TextField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.TextField(db_column='CREATION_DATE', blank=True, null=True)  # Field name made lowercase.
    object_version_number = models.IntegerField(db_column='OBJECT_VERSION_NUMBER', blank=True, null=True)  # Field name made lowercase.
    party_id = models.TextField(db_column='PARTY_ID', blank=True, null=True)  # Field name made lowercase.
    comments = models.TextField(db_column='COMMENTS', blank=True, null=True)  # Field name made lowercase.
    attribute21 = models.TextField(db_column='ATTRIBUTE21', blank=True, null=True)  # Field name made lowercase.
    attribute22 = models.TextField(db_column='ATTRIBUTE22', blank=True, null=True)  # Field name made lowercase.
    attribute23 = models.TextField(db_column='ATTRIBUTE23', blank=True, null=True)  # Field name made lowercase.
    attribute24 = models.TextField(db_column='ATTRIBUTE24', blank=True, null=True)  # Field name made lowercase.
    attribute25 = models.TextField(db_column='ATTRIBUTE25', blank=True, null=True)  # Field name made lowercase.
    attribute26 = models.TextField(db_column='ATTRIBUTE26', blank=True, null=True)  # Field name made lowercase.
    attribute27 = models.TextField(db_column='ATTRIBUTE27', blank=True, null=True)  # Field name made lowercase.
    attribute28 = models.TextField(db_column='ATTRIBUTE28', blank=True, null=True)  # Field name made lowercase.
    attribute29 = models.TextField(db_column='ATTRIBUTE29', blank=True, null=True)  # Field name made lowercase.
    attribute30 = models.TextField(db_column='ATTRIBUTE30', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'hr_all_organization_units'
        app_label = 'EBS'

class HrOperatingUnits(models.Model):
    business_group_id = models.IntegerField(db_column='BUSINESS_GROUP_ID', blank=True, null=True)  # Field name made lowercase.
    organization_id = models.IntegerField(db_column='ORGANIZATION_ID', blank=True, null=True)  # Field name made lowercase.
    name = models.TextField(db_column='NAME', blank=True, null=True)  # Field name made lowercase.
    date_from = models.TextField(db_column='DATE_FROM', blank=True, null=True)  # Field name made lowercase.
    date_to = models.TextField(db_column='DATE_TO', blank=True, null=True)  # Field name made lowercase.
    short_code = models.TextField(db_column='SHORT_CODE', blank=True, null=True)  # Field name made lowercase.
    set_of_books_id = models.IntegerField(db_column='SET_OF_BOOKS_ID', blank=True, null=True)  # Field name made lowercase.
    default_legal_context_id = models.IntegerField(db_column='DEFAULT_LEGAL_CONTEXT_ID', blank=True, null=True)  # Field name made lowercase.
    usable_flag = models.TextField(db_column='USABLE_FLAG', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'hr_operating_units'
        app_label = 'EBS'

class PoLineTypesB(models.Model):
    line_type_id = models.IntegerField(db_column='LINE_TYPE_ID', blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.CharField(db_column='LAST_UPDATE_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    order_type_lookup_code = models.CharField(db_column='ORDER_TYPE_LOOKUP_CODE', max_length=11, blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.CharField(db_column='CREATION_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    category_id = models.CharField(db_column='CATEGORY_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    unit_of_measure = models.CharField(db_column='UNIT_OF_MEASURE', max_length=14, blank=True, null=True)  # Field name made lowercase.
    unit_price = models.CharField(db_column='UNIT_PRICE', max_length=1, blank=True, null=True)  # Field name made lowercase.
    receiving_flag = models.CharField(db_column='RECEIVING_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    inactive_date = models.CharField(db_column='INACTIVE_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    attribute_category = models.CharField(db_column='ATTRIBUTE_CATEGORY', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute1 = models.CharField(db_column='ATTRIBUTE1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute2 = models.CharField(db_column='ATTRIBUTE2', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute3 = models.CharField(db_column='ATTRIBUTE3', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute4 = models.CharField(db_column='ATTRIBUTE4', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute5 = models.CharField(db_column='ATTRIBUTE5', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute6 = models.CharField(db_column='ATTRIBUTE6', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute7 = models.CharField(db_column='ATTRIBUTE7', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute8 = models.CharField(db_column='ATTRIBUTE8', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute9 = models.CharField(db_column='ATTRIBUTE9', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute10 = models.CharField(db_column='ATTRIBUTE10', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute11 = models.CharField(db_column='ATTRIBUTE11', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute12 = models.CharField(db_column='ATTRIBUTE12', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute13 = models.CharField(db_column='ATTRIBUTE13', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute14 = models.CharField(db_column='ATTRIBUTE14', max_length=10, blank=True, null=True)  # Field name made lowercase.
    attribute15 = models.CharField(db_column='ATTRIBUTE15', max_length=10, blank=True, null=True)  # Field name made lowercase.
    outside_operation_flag = models.CharField(db_column='OUTSIDE_OPERATION_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    request_id = models.CharField(db_column='REQUEST_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    program_application_id = models.CharField(db_column='PROGRAM_APPLICATION_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    program_id = models.CharField(db_column='PROGRAM_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    program_update_date = models.CharField(db_column='PROGRAM_UPDATE_DATE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    receive_close_tolerance = models.CharField(db_column='RECEIVE_CLOSE_TOLERANCE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    purchase_basis = models.CharField(db_column='PURCHASE_BASIS', max_length=10, blank=True, null=True)  # Field name made lowercase.
    matching_basis = models.CharField(db_column='MATCHING_BASIS', max_length=8, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'po_line_types_b'
        app_label = 'EBS'

class PoLineTypesTl(models.Model):
    line_type_id = models.IntegerField(db_column='LINE_TYPE_ID', blank=True, null=True)  # Field name made lowercase.
    language = models.CharField(db_column='LANGUAGE', max_length=2, blank=True, null=True)  # Field name made lowercase.
    source_lang = models.CharField(db_column='SOURCE_LANG', max_length=2, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=94, blank=True, null=True)  # Field name made lowercase.
    line_type = models.CharField(db_column='LINE_TYPE', max_length=23, blank=True, null=True)  # Field name made lowercase.
    last_update_date = models.CharField(db_column='LAST_UPDATE_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.CharField(db_column='CREATION_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'po_line_types_tl'
        app_label = 'EBS'


class PoSystemParametersAll(models.Model):
    last_update_date = models.CharField(db_column='LAST_UPDATE_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    last_updated_by = models.IntegerField(db_column='LAST_UPDATED_BY', blank=True, null=True)  # Field name made lowercase.
    last_update_login = models.IntegerField(db_column='LAST_UPDATE_LOGIN', blank=True, null=True)  # Field name made lowercase.
    creation_date = models.CharField(db_column='CREATION_DATE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    created_by = models.IntegerField(db_column='CREATED_BY', blank=True, null=True)  # Field name made lowercase.
    accrued_code_combination_id = models.IntegerField(db_column='ACCRUED_CODE_COMBINATION_ID', blank=True, null=True)  # Field name made lowercase.
    price_change_allowance = models.CharField(db_column='PRICE_CHANGE_ALLOWANCE', max_length=1, blank=True, null=True)  # Field name made lowercase.
    req_can_authorize = models.CharField(db_column='REQ_CAN_AUTHORIZE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    inspection_required_flag = models.CharField(db_column='INSPECTION_REQUIRED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    enforce_price_change_allowance = models.CharField(db_column='ENFORCE_PRICE_CHANGE_ALLOWANCE', max_length=1, blank=True, null=True)  # Field name made lowercase.
    default_rate_type = models.IntegerField(db_column='DEFAULT_RATE_TYPE', blank=True, null=True)  # Field name made lowercase.
    taxable_flag = models.CharField(db_column='TAXABLE_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    user_defined_receipt_num_code = models.CharField(db_column='USER_DEFINED_RECEIPT_NUM_CODE', max_length=6, blank=True, null=True)  # Field name made lowercase.
    manual_receipt_num_type = models.CharField(db_column='MANUAL_RECEIPT_NUM_TYPE', max_length=12, blank=True, null=True)  # Field name made lowercase.
    user_defined_quote_num_code = models.CharField(db_column='USER_DEFINED_QUOTE_NUM_CODE', max_length=9, blank=True, null=True)  # Field name made lowercase.
    manual_quote_num_type = models.CharField(db_column='MANUAL_QUOTE_NUM_TYPE', max_length=12, blank=True, null=True)  # Field name made lowercase.
    user_defined_rfq_num_code = models.CharField(db_column='USER_DEFINED_RFQ_NUM_CODE', max_length=9, blank=True, null=True)  # Field name made lowercase.
    manual_rfq_num_type = models.CharField(db_column='MANUAL_RFQ_NUM_TYPE', max_length=12, blank=True, null=True)  # Field name made lowercase.
    user_defined_po_num_code = models.CharField(db_column='USER_DEFINED_PO_NUM_CODE', max_length=9, blank=True, null=True)  # Field name made lowercase.
    manual_po_num_type = models.CharField(db_column='MANUAL_PO_NUM_TYPE', max_length=12, blank=True, null=True)  # Field name made lowercase.
    user_defined_req_num_code = models.CharField(db_column='USER_DEFINED_REQ_NUM_CODE', max_length=9, blank=True, null=True)  # Field name made lowercase.
    manual_req_num_type = models.CharField(db_column='MANUAL_REQ_NUM_TYPE', max_length=12, blank=True, null=True)  # Field name made lowercase.
    default_quote_warning_delay = models.CharField(db_column='DEFAULT_QUOTE_WARNING_DELAY', max_length=2, blank=True, null=True)  # Field name made lowercase.
    enforce_buyer_authority_flag = models.CharField(db_column='ENFORCE_BUYER_AUTHORITY_FLAG', max_length=10, blank=True, null=True)  # Field name made lowercase.
    enforce_buyer_name_flag = models.CharField(db_column='ENFORCE_BUYER_NAME_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    enforce_vendor_hold_flag = models.CharField(db_column='ENFORCE_VENDOR_HOLD_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    notify_if_blanket_flag = models.CharField(db_column='NOTIFY_IF_BLANKET_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    rfq_required_flag = models.CharField(db_column='RFQ_REQUIRED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    po_document_report_id = models.CharField(db_column='PO_DOCUMENT_REPORT_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    po_document_print_flag = models.CharField(db_column='PO_DOCUMENT_PRINT_FLAG', max_length=10, blank=True, null=True)  # Field name made lowercase.
    rfq_document_report_id = models.CharField(db_column='RFQ_DOCUMENT_REPORT_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    rfq_document_print_flag = models.CharField(db_column='RFQ_DOCUMENT_PRINT_FLAG', max_length=10, blank=True, null=True)  # Field name made lowercase.
    line_type_id = models.IntegerField(db_column='LINE_TYPE_ID', blank=True, null=True)  # Field name made lowercase.
    next_approver_lookup_code = models.CharField(db_column='NEXT_APPROVER_LOOKUP_CODE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    receiving_flag = models.CharField(db_column='RECEIVING_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    allow_item_desc_update_flag = models.CharField(db_column='ALLOW_ITEM_DESC_UPDATE_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    disposition_warning_flag = models.CharField(db_column='DISPOSITION_WARNING_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    enforce_full_lot_quantities = models.CharField(db_column='ENFORCE_FULL_LOT_QUANTITIES', max_length=8, blank=True, null=True)  # Field name made lowercase.
    security_position_structure_id = models.CharField(db_column='SECURITY_POSITION_STRUCTURE_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    min_release_amount = models.CharField(db_column='MIN_RELEASE_AMOUNT', max_length=1, blank=True, null=True)  # Field name made lowercase.
    price_type_lookup_code = models.CharField(db_column='PRICE_TYPE_LOOKUP_CODE', max_length=8, blank=True, null=True)  # Field name made lowercase.
    notification_warning_delay = models.CharField(db_column='NOTIFICATION_WARNING_DELAY', max_length=10, blank=True, null=True)  # Field name made lowercase.
    price_break_lookup_code = models.CharField(db_column='PRICE_BREAK_LOOKUP_CODE', max_length=14, blank=True, null=True)  # Field name made lowercase.
    invoice_close_code = models.CharField(db_column='INVOICE_CLOSE_CODE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    receive_close_code = models.CharField(db_column='RECEIVE_CLOSE_CODE', max_length=9, blank=True, null=True)  # Field name made lowercase.
    invoice_close_tolerance = models.CharField(db_column='INVOICE_CLOSE_TOLERANCE', max_length=1, blank=True, null=True)  # Field name made lowercase.
    receive_close_tolerance = models.CharField(db_column='RECEIVE_CLOSE_TOLERANCE', max_length=1, blank=True, null=True)  # Field name made lowercase.
    cancel_reqs_on_po_cancel_flag = models.CharField(db_column='CANCEL_REQS_ON_PO_CANCEL_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    request_id = models.CharField(db_column='REQUEST_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    program_application_id = models.CharField(db_column='PROGRAM_APPLICATION_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    program_id = models.CharField(db_column='PROGRAM_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    program_update_date = models.CharField(db_column='PROGRAM_UPDATE_DATE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    reqimport_group_by_code = models.CharField(db_column='REQIMPORT_GROUP_BY_CODE', max_length=6, blank=True, null=True)  # Field name made lowercase.
    expense_accrual_code = models.CharField(db_column='EXPENSE_ACCRUAL_CODE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    inventory_accrual_code = models.CharField(db_column='INVENTORY_ACCRUAL_CODE', max_length=7, blank=True, null=True)  # Field name made lowercase.
    order_type_id = models.CharField(db_column='ORDER_TYPE_ID', max_length=4, blank=True, null=True)  # Field name made lowercase.
    order_source_id = models.CharField(db_column='ORDER_SOURCE_ID', max_length=2, blank=True, null=True)  # Field name made lowercase.
    salesrep_id = models.CharField(db_column='SALESREP_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    term_id = models.CharField(db_column='TERM_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    org_id = models.IntegerField(db_column='ORG_ID', blank=True, null=True)  # Field name made lowercase.
    global_attribute1 = models.CharField(db_column='GLOBAL_ATTRIBUTE1', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute2 = models.CharField(db_column='GLOBAL_ATTRIBUTE2', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute3 = models.CharField(db_column='GLOBAL_ATTRIBUTE3', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute4 = models.CharField(db_column='GLOBAL_ATTRIBUTE4', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute5 = models.CharField(db_column='GLOBAL_ATTRIBUTE5', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute6 = models.CharField(db_column='GLOBAL_ATTRIBUTE6', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute7 = models.CharField(db_column='GLOBAL_ATTRIBUTE7', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute8 = models.CharField(db_column='GLOBAL_ATTRIBUTE8', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute9 = models.CharField(db_column='GLOBAL_ATTRIBUTE9', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute10 = models.CharField(db_column='GLOBAL_ATTRIBUTE10', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute11 = models.CharField(db_column='GLOBAL_ATTRIBUTE11', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute12 = models.CharField(db_column='GLOBAL_ATTRIBUTE12', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute13 = models.CharField(db_column='GLOBAL_ATTRIBUTE13', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute14 = models.CharField(db_column='GLOBAL_ATTRIBUTE14', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute15 = models.CharField(db_column='GLOBAL_ATTRIBUTE15', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute16 = models.CharField(db_column='GLOBAL_ATTRIBUTE16', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute17 = models.CharField(db_column='GLOBAL_ATTRIBUTE17', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute18 = models.CharField(db_column='GLOBAL_ATTRIBUTE18', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute19 = models.CharField(db_column='GLOBAL_ATTRIBUTE19', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute20 = models.CharField(db_column='GLOBAL_ATTRIBUTE20', max_length=10, blank=True, null=True)  # Field name made lowercase.
    global_attribute_category = models.CharField(db_column='GLOBAL_ATTRIBUTE_CATEGORY', max_length=10, blank=True, null=True)  # Field name made lowercase.
    tax_from_ship_to_loc_flag = models.CharField(db_column='TAX_FROM_SHIP_TO_LOC_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tax_from_item_flag = models.CharField(db_column='TAX_FROM_ITEM_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tax_from_vendor_flag = models.CharField(db_column='TAX_FROM_VENDOR_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tax_from_vendor_site_flag = models.CharField(db_column='TAX_FROM_VENDOR_SITE_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tax_from_system_flag = models.CharField(db_column='TAX_FROM_SYSTEM_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tax_hier_ship_to_loc = models.CharField(db_column='TAX_HIER_SHIP_TO_LOC', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tax_hier_item = models.CharField(db_column='TAX_HIER_ITEM', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tax_hier_vendor = models.CharField(db_column='TAX_HIER_VENDOR', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tax_hier_vendor_site = models.CharField(db_column='TAX_HIER_VENDOR_SITE', max_length=1, blank=True, null=True)  # Field name made lowercase.
    tax_hier_system = models.CharField(db_column='TAX_HIER_SYSTEM', max_length=10, blank=True, null=True)  # Field name made lowercase.
    create_debit_memo_flag = models.CharField(db_column='CREATE_DEBIT_MEMO_FLAG', max_length=10, blank=True, null=True)  # Field name made lowercase.
    enforce_price_change_amount = models.CharField(db_column='ENFORCE_PRICE_CHANGE_AMOUNT', max_length=1, blank=True, null=True)  # Field name made lowercase.
    price_change_amount = models.CharField(db_column='PRICE_CHANGE_AMOUNT', max_length=1, blank=True, null=True)  # Field name made lowercase.
    auto_offset_method = models.CharField(db_column='AUTO_OFFSET_METHOD', max_length=10, blank=True, null=True)  # Field name made lowercase.
    po_output_format = models.CharField(db_column='PO_OUTPUT_FORMAT', max_length=4, blank=True, null=True)  # Field name made lowercase.
    buying_company_identifier = models.CharField(db_column='BUYING_COMPANY_IDENTIFIER', max_length=10, blank=True, null=True)  # Field name made lowercase.
    gapless_inv_num_flag = models.CharField(db_column='GAPLESS_INV_NUM_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    acceptance_required_flag = models.CharField(db_column='ACCEPTANCE_REQUIRED_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    max_attachment_size = models.CharField(db_column='MAX_ATTACHMENT_SIZE', max_length=1, blank=True, null=True)  # Field name made lowercase.
    supplier_authoring_acceptance = models.CharField(db_column='SUPPLIER_AUTHORING_ACCEPTANCE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    cat_admin_authoring_acceptance = models.CharField(db_column='CAT_ADMIN_AUTHORING_ACCEPTANCE', max_length=10, blank=True, null=True)  # Field name made lowercase.
    email_attachment_filename = models.CharField(db_column='EMAIL_ATTACHMENT_FILENAME', max_length=15, blank=True, null=True)  # Field name made lowercase.
    group_shipments_flag = models.CharField(db_column='GROUP_SHIPMENTS_FLAG', max_length=1, blank=True, null=True)  # Field name made lowercase.
    irm_cust_id = models.CharField(max_length=100)
    irm_job_id = models.CharField(max_length=100)
    irm_crd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_date = models.DateTimeField(blank=True, null=True)
    irm_upd_user = models.CharField(max_length=100)
    irm_crd_user = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'po_system_parameters_all'
        app_label = 'EBS'
