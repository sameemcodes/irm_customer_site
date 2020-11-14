
from ebs_db_content.models import FndApplicationVl, FndConcurrentProgramsVl, FndDataGroups, FndFormFunctionsVl, FndMenuEntriesVl, FndMenusVl
from ebs_db_content.models import FndNodes, FndProfileOptions, FndProfileOptionsVl, FndProfileOptionValues, FndRequestGroups, FndRequestGroupUnits, FndRespFunctions
from ebs_db_content.models import FndResponsibilityVl, FndUser
import logging
#from celery import shared_task
#from celery_progress.backend import ProgressRecorder
import pandas as pd

db_logger = logging.getLogger('ebs_db')
db_logger.info('info message')
db_logger.warning('warning message')



#@shared_task(bind=True)
def insert_data_db(df_data, src_customer_data):

    # progress_recorder = ProgressRecorder(self)
    # result = 0

    for key, df in df_data.items():
        df[0] = pd.DataFrame.from_dict(df[0])

        if key == 'fnd_application_vl':
            for row in df[0].itertuples(index=False):
                try:
                    FndApplicationVl.objects.using('ebs_db').create(row_id = row._0,
                                                                    application_id = row._1,
                                                                    application_short_name = row._2,
                                                                    last_update_date = row._3,
                                                                    last_updated_by =  row._4,
                                                                    creation_date = row._5,
                                                                    created_by = row._6,
                                                                    last_update_login = row._7,
                                                                    basepath = row._8,
                                                                    application_name = row._9,
                                                                    description = row._10,
                                                                    product_code = row._11,
                                                                    irm_cust_id = src_customer_data['cust_id'],
                                                                    irm_job_id = src_customer_data['irm_job_id'],
                                                                    irm_crd_date = src_customer_data['run_date'],
                                                                    irm_upd_date = src_customer_data['run_date'],
                                                                    irm_upd_user = src_customer_data['user_id'],
                                                                    irm_crd_user = src_customer_data['user_id'])
                except Exception as e:
                    db_logger.exception(e)

        elif key == 'fnd_concurrent_programs_vl':

            for row in df[0].itertuples(index=False):
                try:
                    FndConcurrentProgramsVl.objects.using('ebs_db').create(
                        row_id = row._0,
                        resource_consumer_group = row._1,
                        rollback_segment = row._2,
                        optimizer_mode = row._3,
                        security_group_id = row._4,
                        application_id = row._5,
                        concurrent_program_id = row._6,
                        concurrent_program_name = row._7,
                        last_update_date = row._8,
                        last_updated_by = row._9,
                        creation_date = row._10,
                        created_by = row._11,
                        last_update_login = row._12,
                        executable_application_id = row._13,
                        executable_id = row._14,
                        execution_method_code = row._15,
                        argument_method_code = row._16,
                        queue_control_flag = row._17,
                        queue_method_code = row._18,
                        request_set_flag = row._19,
                        enabled_flag = row._20,
                        print_flag = row._21,
                        run_alone_flag = row._22,
                        srs_flag = row._23,
                        class_application_id = row._24,
                        concurrent_class_id = row._25,
                        execution_options = row._26,
                        save_output_flag = row._27,
                        required_style = row._28,
                        output_print_style = row._29,
                        printer_name = row._30,
                        minimum_width = row._31,
                        minimum_length = row._32,
                        request_priority = row._33,
                        attribute_category = row._34,
                        attribute1 = row._35,
                        attribute2 = row._36,
                        attribute3 = row._37,
                        attribute4 = row._38,
                        attribute5 = row._39,
                        attribute6 = row._40,
                        attribute7 = row._41,
                        attribute8 = row._42,
                        attribute9 = row._43,
                        attribute10 = row._44,
                        attribute11 = row._45,
                        attribute12 = row._46,
                        attribute13 = row._47,
                        attribute14 = row._48,
                        attribute15 = row._49,
                        iprog_id = row._50,
                        output_file_type = row._51,
                        enable_trace = row._52,
                        restart = row._53,
                        nls_compliant = row._54,
                        icon_name = row._55,
                        cd_parameter = row._56,
                        increment_proc = row._57,
                        mls_executable_app_id = row._58,
                        mls_executable_id = row._59,
                        enable_time_statistics = row._60,
                        refresh_portlet = row._61,
                        program_type = row._62,
                        activity_summarizer = row._63,
                        request_sch_interval = row._64,
                        allow_multiple_pending_request = row._65,
                        delete_log_file = row._66,
                        template_appl_short_name = row._67,
                        template_code = row._68,
                        recalc_parameters = row._69,
                        multi_org_category = row._70,
                        user_concurrent_program_name = row._71,
                        description = row._72,
                        irm_cust_id = src_customer_data['cust_id'],
                        irm_job_id = src_customer_data['irm_job_id'],
                        irm_crd_date = src_customer_data['run_date'],
                        irm_upd_date = src_customer_data['run_date'],
                        irm_upd_user = src_customer_data['user_id'],
                        irm_crd_user = src_customer_data['user_id'])

                except Exception as e:
                    db_logger.exception(e)

        elif key == 'fnd_data_groups':
            print('found')
            for row in df[0].itertuples(index=False):
                try:
                    FndDataGroups.objects.using('ebs_db').create(data_group_id = row._0,
                                                                data_group_name = row._1,
                                                                last_update_date = row._2,
                                                                last_updated_by = row._3,
                                                                creation_date = row._4,
                                                                created_by = row._5,
                                                                last_update_login = row._6,
                                                                default_group_flag = row._7,
                                                                description = row._8,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])

                except Exception as e:
                    db_logger.exception(e)

        elif key == 'fnd_data_groups':
            print('found')
            for row in df[0].itertuples(index=False):
                try:
                    FndDataGroups.objects.using('ebs_db').create(data_group_id = row._0,
                                                                data_group_name = row._1,
                                                                last_update_date = row._2,
                                                                last_updated_by = row._3,
                                                                creation_date = row._4,
                                                                created_by = row._5,
                                                                last_update_login = row._6,
                                                                default_group_flag = row._7,
                                                                description = row._8,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])

                except Exception as e:
                    db_logger.exception(e)



        elif key == 'fnd_form_functions_vl':
            print('found')
            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:
                    FndFormFunctionsVl.objects.using('ebs_db').create(row_id = row._0,
                                                                        web_host_name = row._1,
                                                                        web_agent_name = row._2,
                                                                        web_html_call = row._3,
                                                                        web_encrypt_parameters = row._4,
                                                                        web_secured = row._5,
                                                                        web_icon = row._6,
                                                                        function_id = row._7,
                                                                        function_name = row._8,
                                                                        application_id = row._9,
                                                                        form_id = row._10,
                                                                        parameters = row._11,
                                                                        creation_date = row._12,
                                                                        created_by = row._13,
                                                                        last_update_date = row._14,
                                                                        last_updated_by = row._15,
                                                                        last_update_login = row._16,
                                                                        type = row._17,
                                                                        user_function_name = row._18,
                                                                        description = row._19,
                                                                        object_id = row._20,
                                                                        region_application_id = row._21,
                                                                        region_code = row._22,
                                                                        maintenance_mode_support = row._23,
                                                                        context_dependence = row._24,
                                                                        jrad_ref_path = row._25,
                                                                        irep_method_name = row._26,
                                                                        irep_overload_sequence = row._27,
                                                                        irep_scope = row._28,
                                                                        irep_lifecycle = row._29,
                                                                        irep_description = row._30,
                                                                        irep_compatibility = row._31,
                                                                        irep_inbound_xml_description = row._32,
                                                                        irep_outbound_xml_description = row._33,
                                                                        irep_synchro = row._34,
                                                                        irep_direction = row._35,
                                                                        irep_assoc_function_name = row._36,
                                                                        irep_class_id = row._37,
                                                                        irm_cust_id = src_customer_data['cust_id'],
                                                                        irm_job_id = src_customer_data['irm_job_id'],
                                                                        irm_crd_date = src_customer_data['run_date'],
                                                                        irm_upd_date = src_customer_data['run_date'],
                                                                        irm_upd_user = src_customer_data['user_id'],
                                                                        irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)

        elif key == 'fnd_menu_entries_vl':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:
                    FndMenuEntriesVl.objects.using('ebs_db').create(row_id = row._0,
                                                                    menu_id = row._1,
                                                                    entry_sequence = row._2,
                                                                    sub_menu_id = row._3,
                                                                    function_id = row._4,
                                                                    grant_flag = row._5,
                                                                    last_update_date = row._6,
                                                                    last_updated_by = row._7,
                                                                    last_update_login = row._8,
                                                                    creation_date = row._9,
                                                                    created_by = row._10,
                                                                    prompt = row._11,
                                                                    description = row._12,
                                                                    irm_cust_id = src_customer_data['cust_id'],
                                                                    irm_job_id = src_customer_data['irm_job_id'],
                                                                    irm_crd_date = src_customer_data['run_date'],
                                                                    irm_upd_date = src_customer_data['run_date'],
                                                                    irm_upd_user = src_customer_data['user_id'],
                                                                    irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)

        elif key == 'fnd_menus_vl':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:
                    FndMenusVl.objects.using('ebs_db').create(row_id = row._0,
                                                                menu_id = row._1,
                                                                menu_name = row._2,
                                                                type = row._3,
                                                                last_update_date = row._4,
                                                                last_updated_by = row._5,
                                                                last_update_login = row._6,
                                                                creation_date = row._7,
                                                                created_by = row._8,
                                                                user_menu_name = row._9,
                                                                description = row._10,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)


        elif key == 'fnd_nodes':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:
                    FndNodes.objects.using('ebs_db').create(node_name = row._0,
                                                            last_update_date = row._1,
                                                            last_updated_by = row._2,
                                                            creation_date = row._3,
                                                            created_by = row._4,
                                                            last_update_login = row._5,
                                                            platform_code = row._6,
                                                            description = row._7,
                                                            basepath = row._8,
                                                            support_cp = row._9,
                                                            support_forms = row._10,
                                                            support_web = row._11,
                                                            support_admin = row._12,
                                                            status = row._13,
                                                            ping_response = row._14,
                                                            last_monitored_time = row._15,
                                                            node_mode = row._16,
                                                            node_id = row._17,
                                                            server_id = row._18,
                                                            server_address = row._19,
                                                            host = row._20,
                                                            domain = row._21,
                                                            webhost = row._22,
                                                            virtual_ip = row._23,
                                                            support_db = row._24,
                                                            appltop_id = row._25,
                                                            irm_cust_id = src_customer_data['cust_id'],
                                                            irm_job_id = src_customer_data['irm_job_id'],
                                                            irm_crd_date = src_customer_data['run_date'],
                                                            irm_upd_date = src_customer_data['run_date'],
                                                            irm_upd_user = src_customer_data['user_id'],
                                                            irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)


        elif key == 'fnd_profile_options':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:
                    FndProfileOptions.objects.using('ebs_db').create(application_id = row._0,
                                                                    profile_option_id = row._1,
                                                                    profile_option_name = row._2,
                                                                    last_update_date = row._3,
                                                                    last_updated_by = row._4,
                                                                    creation_date = row._5,
                                                                    created_by = row._6,
                                                                    last_update_login = row._7,
                                                                    write_allowed_flag = row._8,
                                                                    read_allowed_flag = row._9,
                                                                    user_changeable_flag = row._10,
                                                                    user_visible_flag = row._11,
                                                                    site_enabled_flag = row._12,
                                                                    site_update_allowed_flag = row._13,
                                                                    app_enabled_flag = row._14,
                                                                    app_update_allowed_flag = row._15,
                                                                    resp_enabled_flag = row._16,
                                                                    resp_update_allowed_flag = row._17,
                                                                    user_enabled_flag = row._18,
                                                                    user_update_allowed_flag = row._19,
                                                                    start_date_active = row._20,
                                                                    sql_validation = row._21,
                                                                    end_date_active = row._22,
                                                                    hierarchy_type = row._23,
                                                                    server_enabled_flag = row._24,
                                                                    org_enabled_flag = row._25,
                                                                    server_update_allowed_flag = row._26,
                                                                    org_update_allowed_flag = row._27,
                                                                    serverresp_enabled_flag = row._28,
                                                                    serverresp_update_allowed_flag = row._29,
                                                                    irm_cust_id = src_customer_data['cust_id'],
                                                                    irm_job_id = src_customer_data['irm_job_id'],
                                                                    irm_crd_date = src_customer_data['run_date'],
                                                                    irm_upd_date = src_customer_data['run_date'],
                                                                    irm_upd_user = src_customer_data['user_id'],
                                                                    irm_crd_user = src_customer_data['user_id'])




                except Exception as e:
                    db_logger.exception(e)


        elif key == 'fnd_profile_options_tl':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:
                    FndProfileOptionsTl.objects.using('ebs_db').create(profile_option_name = row._0,
                                                                        language = row._1,
                                                                        user_profile_option_name = row._2,
                                                                        created_by = row._3,
                                                                        creation_date = row._4,
                                                                        last_updated_by = row._5,
                                                                        last_update_date = row._6,
                                                                        last_update_login = row._7,
                                                                        description = row._8,
                                                                        source_lang = row._9)




                except Exception as e:
                    db_logger.exception(e)

        elif key == 'fnd_profile_options_vl':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:
                    FndProfileOptionsVl.objects.using('ebs_db').create(row_id = row._0,
                                                                        application_id = row._1,
                                                                        profile_option_id = row._2,
                                                                        profile_option_name = row._3,
                                                                        last_update_date = row._4,
                                                                        last_updated_by = row._5,
                                                                        creation_date = row._6,
                                                                        created_by = row._7,
                                                                        last_update_login = row._8,
                                                                        write_allowed_flag = row._9,
                                                                        read_allowed_flag = row._10,
                                                                        user_changeable_flag = row._11,
                                                                        user_visible_flag = row._12,
                                                                        site_enabled_flag = row._13,
                                                                        site_update_allowed_flag = row._14,
                                                                        app_enabled_flag = row._15,
                                                                        app_update_allowed_flag = row._16,
                                                                        resp_enabled_flag = row._17,
                                                                        resp_update_allowed_flag = row._18,
                                                                        user_enabled_flag = row._19,
                                                                        user_update_allowed_flag = row._20,
                                                                        start_date_active = row._21,
                                                                        sql_validation = row._22,
                                                                        end_date_active = row._23,
                                                                        user_profile_option_name = row._24,
                                                                        hierarchy_type = row._25,
                                                                        server_enabled_flag = row._26,
                                                                        server_update_allowed_flag = row._27,
                                                                        org_enabled_flag = row._28,
                                                                        org_update_allowed_flag = row._29,
                                                                        serverresp_enabled_flag = row._30,
                                                                        serverresp_update_allowed_flag = row._31,
                                                                        description = row._32)




                except Exception as e:
                    db_logger.exception(e)


        elif key == 'fnd_profile_option_values':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                #
                try:
                    FndProfileOptionValues.objects.using('ebs_db').create(application_id = row._0,
                                                                    profile_option_id = row._1,
                                                                    level_id = row._2,
                                                                    level_value = row._3,
                                                                    last_update_date = row._4,
                                                                    last_updated_by = row._5,
                                                                    creation_date = row._6,
                                                                    created_by = row._7,
                                                                    last_update_login = row._8,
                                                                    profile_option_value = row._9,
                                                                    level_value_application_id = row._10,
                                                                    level_value2 = row._11,
                                                                    irm_cust_id = src_customer_data['cust_id'],
                                                                    irm_job_id = src_customer_data['irm_job_id'],
                                                                    irm_crd_date = src_customer_data['run_date'],
                                                                    irm_upd_date = src_customer_data['run_date'],
                                                                    irm_upd_user = src_customer_data['user_id'],
                                                                    irm_crd_user = src_customer_data['user_id'])




                except Exception as e:
                    db_logger.exception(e)


        elif key == 'fnd_request_groups':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:
                    FndRequestGroups.objects.using('ebs_db').create(application_id = row._0,
                                                            request_group_id = row._1,
                                                            request_group_name = row._2,
                                                            last_update_date = row._3,
                                                            last_updated_by = row._4,
                                                            creation_date = row._5,
                                                            created_by = row._6,
                                                            last_update_login = row._7,
                                                            description = row._8,
                                                            request_group_code = row._9,
                                                            irm_cust_id = src_customer_data['cust_id'],
                                                            irm_job_id = src_customer_data['irm_job_id'],
                                                            irm_crd_date = src_customer_data['run_date'],
                                                            irm_upd_date = src_customer_data['run_date'],
                                                            irm_upd_user = src_customer_data['user_id'],
                                                            irm_crd_user = src_customer_data['user_id'])




                except Exception as e:
                    db_logger.exception(e)


        elif key == 'fnd_request_group_units':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:
                    
                    FndRequestGroupUnits.objects.using('ebs_db').create(application_id = row._0,
                                                                        request_group_id = row._1,
                                                                        request_unit_type = row._2,
                                                                        unit_application_id = row._3,
                                                                        request_unit_id = row._4,
                                                                        last_update_date = row._5,
                                                                        last_updated_by = row._6,
                                                                        creation_date = row._7,
                                                                        created_by = row._8,
                                                                        last_update_login = row._9,
                                                                        irm_cust_id = src_customer_data['cust_id'],
                                                                        irm_job_id = src_customer_data['irm_job_id'],
                                                                        irm_crd_date = src_customer_data['run_date'],
                                                                        irm_upd_date = src_customer_data['run_date'],
                                                                        irm_upd_user = src_customer_data['user_id'],
                                                                        irm_crd_user = src_customer_data['user_id'])




                except Exception as e:
                    db_logger.exception(e)


        elif key == 'fnd_resp_functions':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:

                    FndRespFunctions.objects.using('ebs_db').create(application_id = row._0,
                                                                    responsibility_id = row._1,
                                                                    action_id = row._2,
                                                                    rule_type = row._3,
                                                                    last_update_date = row._4,
                                                                    last_updated_by = row._5,
                                                                    last_update_login = row._6,
                                                                    creation_date = row._7,
                                                                    created_by = row._8,
                                                                    irm_cust_id = src_customer_data['cust_id'],
                                                                    irm_job_id = src_customer_data['irm_job_id'],
                                                                    irm_crd_date = src_customer_data['run_date'],
                                                                    irm_upd_date = src_customer_data['run_date'],
                                                                    irm_upd_user = src_customer_data['user_id'],
                                                                    irm_crd_user = src_customer_data['user_id'])




                except Exception as e:
                    db_logger.exception(e)


        elif key == 'fnd_responsibility_vl':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:

                    FndResponsibilityVl.objects.using('ebs_db').create(row_id = row._0,
                                                                        web_host_name = row._1,
                                                                        web_agent_name = row._2,
                                                                        application_id = row._3,
                                                                        responsibility_id = row._4,
                                                                        responsibility_key = row._5,
                                                                        last_update_date = row._6,
                                                                        last_updated_by = row._7,
                                                                        creation_date = row._8,
                                                                        created_by = row._9,
                                                                        last_update_login = row._10,
                                                                        data_group_application_id = row._11,
                                                                        data_group_id = row._12,
                                                                        menu_id = row._13,
                                                                        start_date = row._14,
                                                                        end_date = row._15,
                                                                        group_application_id = row._16,
                                                                        request_group_id = row._17,
                                                                        version = row._18,
                                                                        responsibility_name = row._19,
                                                                        description = row._20,
                                                                        irm_cust_id = src_customer_data['cust_id'],
                                                                        irm_job_id = src_customer_data['irm_job_id'],
                                                                        irm_crd_date = src_customer_data['run_date'],
                                                                        irm_upd_date = src_customer_data['run_date'],
                                                                        irm_upd_user = src_customer_data['user_id'],
                                                                        irm_crd_user = src_customer_data['user_id'])




                except Exception as e:
                    db_logger.exception(e)


        elif key == 'fnd_user':

            df[0] = df[0].where(pd.notnull(df[0]), None)

            for row in df[0].itertuples(index=False):
                try:

                    FndUser.objects.using('ebs_db').create(user_id = row._0,
                                                            user_name = row._1,
                                                            last_update_date = row._2,
                                                            last_updated_by = row._3,
                                                            creation_date = row._4,
                                                            created_by = row._5,
                                                            last_update_login = row._6,
                                                            encrypted_foundation_password = row._7,
                                                            encrypted_user_password = row._8,
                                                            session_number = row._9,
                                                            start_date = row._10,
                                                            end_date = row._11,
                                                            description = row._12,
                                                            last_logon_date = row._13,
                                                            password_date = row._14,
                                                            password_accesses_left = row._15,
                                                            password_lifespan_accesses = row._16,
                                                            password_lifespan_days = row._17,
                                                            employee_id = row._18,
                                                            email_address = row._19,
                                                            fax = row._20,
                                                            customer_id = row._21,
                                                            supplier_id = row._22,
                                                            web_password = row._23,
                                                            user_guid = row._24,
                                                            gcn_code_combination_id = row._25,
                                                            person_party_id = row._26,
                                                            irm_cust_id = src_customer_data['cust_id'],
                                                            irm_job_id = src_customer_data['irm_job_id'],
                                                            irm_crd_date = src_customer_data['run_date'],
                                                            irm_upd_date = src_customer_data['run_date'],
                                                            irm_upd_user = src_customer_data['user_id'],
                                                            irm_crd_user = src_customer_data['user_id'])




                except Exception as e:
                    db_logger.exception(e)


        #progress_recorder.set_progress(result + 1, len(df_data))
        #result += 1

    # return 'Task Complete'
