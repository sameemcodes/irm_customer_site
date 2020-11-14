import logging
#from celery import shared_task
#from celery_progress.backend import ProgressRecorder
import pandas as pd
from hana_db_content.models import Sod10T001, Sod01Agr1252, Sod02AgrTcodes, Sod03UsobtC, Sod04Tobj, Sod05Agr1251, Sod06AgrUsers, Sod07Usr21, Sod08Adrp
from hana_db_content.models import Sod09AgrTexts, Sod11T001K, Sod12T024E, Sod13T024, Sod14Tvko
db_logger = logging.getLogger('ebs_db')
db_logger.info('info message')
db_logger.warning('warning message')


def insert_data_db(df_data, src_customer_data):

    # progress_recorder = ProgressRecorder(self)
    # result = 0

    for key, df in df_data.items():
        df[0] = pd.DataFrame.from_dict(df[0])


        if key == 'SOD-01-AGR_1252':
            for row in df[0].itertuples(index=False):
                try:

                    Sod01Agr1252.objects.using('hana_db').create(client =                      row._0,
                                                                role =                         row._1,
                                                                id =                           row._2,
                                                                org_level =                    row._3,
                                                                authorization_value =          row._4,
                                                                authorization_value1 =         row._5,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)

        elif key == 'SOD-02-AGR_TCODES':
            for row in df[0].itertuples(index=False):
                try:

                    Sod02AgrTcodes.objects.using('hana_db').create(client =row._0,
                                                            role = row._1,
                                                            typ =  row._2,
                                                            extended_name = row._3,
                                                            exclusive =     row._4,
                                                            transaction_input_directly = row._5,
                                                            transaction_inherited_from_previous_role = row._6,
                                                            id =  row._7,
                                                            irm_cust_id = src_customer_data['cust_id'],
                                                            irm_job_id = src_customer_data['irm_job_id'],
                                                            irm_crd_date = src_customer_data['run_date'],
                                                            irm_upd_date = src_customer_data['run_date'],
                                                            irm_upd_user = src_customer_data['user_id'],
                                                            irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)




        elif key == 'SOD-03-USOBT_C':
            for row in df[0].itertuples(index=False):
                try:

                    Sod03UsobtC.objects.using('hana_db').create(name =  row._0,
                                                                test_status_type_and_proposed_values_for =  row._1,
                                                                authorization_object = row._2,
                                                                authorization_fld =    row._3,
                                                                authorization_value =  row._4,
                                                                authorization_value1 =   row._5,
                                                                changed_by =  row._6,
                                                                modification_date = row._7,
                                                                modification_time = row._8,
                                                                modification_id =   row._9,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)

        elif key == 'SOD-04-TOBJ':
            for row in df[0].itertuples(index=False):
                try:

                    Sod04Tobj.objects.using('hana_db').create(authorization_object =  row._0,
                                                            authorization_fld1 =    row._1,
                                                            authorization_fld2 =    row._2,
                                                            authorization_fld3 =    row._3,
                                                            authorization_fld4 =    row._4,
                                                            authorization_fld5 =    row._5,
                                                            authorization_fld6 =    row._6,
                                                            authorization_fld7 =    row._7,
                                                            authorization_fld8 =    row._8,
                                                            authorization_fld9 =    row._9,
                                                            authorization_fld10 =   row._10,
                                                            clss = row._11,
                                                            user = row._12,
                                                            fb = row._13,
                                                            conversion_flag =   row._14,
                                                            text =  row._15,
                                                            irm_cust_id = src_customer_data['cust_id'],
                                                            irm_job_id = src_customer_data['irm_job_id'],
                                                            irm_crd_date = src_customer_data['run_date'],
                                                            irm_upd_date = src_customer_data['run_date'],
                                                            irm_upd_user = src_customer_data['user_id'],
                                                            irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)


        elif key == 'SOD-05-AGR_1251':

            for row in df[0].itertuples(index=False):
                try:

                    Sod05Agr1251.objects.using('hana_db').create(authorization_object =  row._0,
                                                                authorization_fld1 =    row._1,
                                                                authorization_fld2 =    row._2,
                                                                authorization_fld3 =    row._3,
                                                                authorization_fld4 =    row._4,
                                                                authorization_fld5 =    row._5,
                                                                authorization_fld6 =    row._6,
                                                                authorization_fld7 =    row._7,
                                                                authorization_fld8 =    row._8,
                                                                authorization_fld9 =    row._9,
                                                                authorization_fld10 =   row._10,
                                                                clss = row._11,
                                                                user = row._12,
                                                                fb = row._13,
                                                                conversion_flag =   row._14,
                                                                text =  row._15,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)

        elif key == 'SOD-06-AGR_USERS':

            for row in df[0].itertuples(index=False):
                try:

                    Sod06AgrUsers.objects.using('hana_db').create(client = row._0,
                                                                role =   row._1,
                                                                user_name = row._2,
                                                                start_date = row._3,
                                                                end_date = row._4,
                                                                exclusive = row._5,
                                                                date = row._6,
                                                                time = row._7,
                                                                utc_time_stamp_in_short_form_yyyymmddhh = row._8,
                                                                assignment_comes_from_hr_organization_ma = row._9,
                                                                assignment_comes_from_composite_role =  row._10,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)

        elif key == 'SOD-07-USR21':

            for row in df[0].itertuples(index=False):
                try:

                    Sod07Usr21.objects.using('hana_db').create(cl_field =  row._0,
                                                                user_name = row._1,
                                                                person =    row._2,
                                                                addr_no_field = row._3,
                                                                cost_ctr = row._4,
                                                                start_menu = row._5,
                                                                identity_add_type =  row._6,
                                                                business_partner_guid =  row._7,
                                                                business_partner_guid1 = row._8,
                                                                user_responsible = row._9,
                                                                description_of_the_technical_user_accoun =  row._10,
                                                                identity_guid =  row._11,
                                                                organization_type = row._12,
                                                                addr_no_1 = row._13,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)


        elif key == 'SOD-08-ADRP':

            for row in df[0].itertuples(index=False):
                try:

                    Sod08Adrpobjects.objects.using('hana_db').create(cl_field = row._0,
                                                            person =   row._1,
                                                            from_field = row._2,
                                                            version = row._3,
                                                            to =  row._4,
                                                            key = row._5,
                                                            first_name = row._6,
                                                            last_name =  row._7,
                                                            name_at_birth = row._8,
                                                            second_first_name_or_middle_name = row._9,
                                                            second_family_name =row._10,
                                                            full_name =         row._11,
                                                            conv_field =        row._12,
                                                            academic_title_1 =  row._13,
                                                            number_2nd_key =    row._14,
                                                            prefix_1 =          row._15,
                                                            number_2nd_key1 =   row._16,
                                                            key1 =              row._17,
                                                            nickname_name_used =row._18,
                                                            initials = row._19,
                                                            format = row._20,
                                                            ctry =   row._21,
                                                            profession = row._22,
                                                            gender_key = row._23,
                                                            language =   row._24,
                                                            key2 = row._25,
                                                            flag_there_are_other_person_group_assig = row._26,
                                                            search_term_1 = row._27,
                                                            search_term_2 = row._29,
                                                            phonet_sort_field = row._30,
                                                            number_1st_compny = row._41,
                                                            pers_addr1 = row._42,
                                                            pt =   row._43,
                                                            pc =   row._44,
                                                            srce =  row._45,
                                                            first_name1 = row._46,
                                                            last_name1 =  row._47,
                                                            name_at_birth1 = row._48,
                                                            lang = row._49,
                                                            address_uuid =   row._50,
                                                            subsequent_uuid = row._51,
                                                            address_id_category = row._52,
                                                            status = row._53,
                                                            data_filter_value_for_data_aging = row._53,
                                                            irm_cust_id = src_customer_data['cust_id'],
                                                            irm_job_id = src_customer_data['irm_job_id'],
                                                            irm_crd_date = src_customer_data['run_date'],
                                                            irm_upd_date = src_customer_data['run_date'],
                                                            irm_upd_user = src_customer_data['user_id'],
                                                            irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)


        elif key == 'SOD-09-AGR_TEXTS':

            for row in df[0].itertuples(index=False):
                try:

                    Sod09AgrTexts.objects.using('hana_db').create(client = row._0,
                                                                role = row._1,
                                                                language = row._2,
                                                                id = row._3,
                                                                short_role_description =  row._4,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)


        elif key == 'SOD-10-T001':
            for row in df[0].itertuples(index=False):
                try:

                    Sod10T001.objects.using('hana_db').create(
                        cl_field =                      row._0,
                        cocd =                          row._1,
                        company_name =                  row._2,
                        city =                          row._3,
                        ctr =                           row._4,
                        crcy =                          row._5,
                        language =                      row._6,
                        chac =                          row._7,
                        max_ex_dev_field =              row._8,
                        fv =                            row._9,
                        c =                             row._10,
                        co_field =                      row._11,
                        address =                       row._12,
                        vat_registration_no_field =     row._13,
                        fma =                           row._14,
                        project_cash_mgmt_active =      row._15,
                        active =                        row._16,
                        update =                        row._17,
                        jurisdict_code =                row._18,
                        fundsctr_in_hr =                row._19,
                        template =                      row._20,
                        var_field =                     row._21,
                        cmcc =                          row._22,
                        cash_management_activated =     row._23,
                        define_default_value_date =     row._24,
                        din =                           row._25,
                        ccar =                          row._26,
                        txn =                           row._27,
                        var_1 =                         row._29,
                        business_area_fin_statements =  row._30,
                        propose_fiscal_year =           row._31,
                        post_translation =              row._32,
                        company_code_is_productive =    row._33,
                        purchase_account_processing =   row._34,
                        jv_accounting_active =          row._35,
                        financial_assets_mgmt_active =  row._36,
                        no_exch_rate_diff_when_clearing_in_lc = row._37,
                        update_mm = row._38,
                        update_sd = row._39,
                        ext_field = row._40,
                        orig =      row._41,
                        cha2 =      row._42,
                        tx_grp =    row._43,
                        xscc =      row._44,
                        fstv =      row._45,
                        var_2 =     row._46,
                        hedge_request_active = row._47,
                        tax_crcy_translation = row._48,
                        wrkf =  row._49,
                        i =     row._50,
                        p =                                     row._51,
                        r =                                     row._52,
                        c1 =                                    row._53,
                        d =                                     row._54,
                        input_tax_code =                        row._55,
                        output_tax_code =                       row._56,
                        import_data_in_purchase_order =         row._57,
                        negative_postings =                     row._59,
                        c2 = row._60,
                        extended_withholding_tax_active = row._61,
                        prk_pst_dt = row._62,
                        inflation_method =  row._63,
                        field_status_variant = row._64,
                        copying_control_goods_receipt =   row._65,
                        import_data_goods_receipt =  row._66,
                        method_offsttng_acct = row._67,
                        ba_variant =  row._68,
                        cost_of_sales_accountg_status = row._69,
                        ar_pledg_act_field = row._70,
                        s =    row._71,
                        surcharge_method = row._82,
                        document_type_for_provisions_for_taxes = row._83,
                        document_type_for_jv_amount_correction_field = row._84,
                        document_type_for_jv_tax_code_correctio =  row._85,
                        remittance_challan_document_type =         row._86,
                        deferred_tax_rule =                        row._87,
                        tax_date =                                 row._89,
                        manage_posting_period_for_company_code_l = row._90,
                        shopping_cart =  row._91,
                        hide = row._92,
                        aa_derivtn =   row._93,
                        irm_cust_id = src_customer_data['cust_id'],
                        irm_job_id = src_customer_data['irm_job_id'],
                        irm_crd_date = src_customer_data['run_date'],
                        irm_upd_date = src_customer_data['run_date'],
                        irm_upd_user = src_customer_data['user_id'],
                        irm_crd_user = src_customer_data['user_id'])

                except Exception as e:
                    db_logger.exception(e)


        elif key == 'SOD-11-T001K':

            for row in df[0].itertuples(index=False):
                try:

                    Sod11T001K.objects.using('hana_db').create(cl_field  = row._0,
                                                                vala  = row._1,
                                                                cocd  = row._2,
                                                                vgcd  = row._3,
                                                                neg_stocks  =  row._4,
                                                                mat_ledger_active  =  row._5,
                                                                ml_active_compulsory_field  = row._6,
                                                                spva  = row._7,
                                                                explanation_facility  = row._8,
                                                                revp  = row._9,
                                                                vimp  = row._10,
                                                                price_determination  = row._11,
                                                                price_determination_is_binding_in_valuat  = row._12,
                                                                stock_correction_toler_field  =  row._13,
                                                                p  =  row._14,
                                                                recpt_value  =          row._15,
                                                                two_fi_documents  =     row._16,
                                                                price_release  =        row._17,
                                                                actual_ccs  =           row._18,
                                                                del_costs  =            row._19,
                                                                from_year  =            row._20,
                                                                price_release_fmp  =    row._21,
                                                                price_release_group  =  row._22,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)


        elif key == 'SOD-12-T024E':

            for row in df[0].itertuples(index=False):
                try:

                    Sod12T024E.objects.using('hana_db').create(cl_field  =  row._0,
                                                                porg  = row._1,
                                                                purch_org_descr_field  = row._2,
                                                                cocd  =  row._3,
                                                                text_name_sender_line  =  row._4,
                                                                text_name_letter_heading  =  row._5,
                                                                text_name_footer_lines  =    row._6,
                                                                text_name_complimentary_close  =      row._7,
                                                                gr  = row._8,
                                                                schema  = row._9,
                                                                effective_price_in_order_price_history  = row._10,
                                                                cocd1  = row._11,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)


        elif key == 'SOD-13-T024':

            for row in df[0].itertuples(index=False):
                try:

                    Sod13T024.objects.using('hana_db').create(cl_field  =    row._0,
                                                                pgr  =         row._1,
                                                                description  = row._2,
                                                                telephone  =   row._3,
                                                                odev  =        row._4,
                                                                fax_number  =  row._5,
                                                                telephone1  =  row._6,
                                                                extension  =   row._7,
                                                                e_mail_address  = row._8,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)


        elif key == 'SOD-14-TVKO':

            for row in df[0].itertuples(index=False):
                try:
                    
                    Sod14Tvko.objects.using('hana_db').create(cl_field  = row._0,
                                                                sorg_field  = row._1,
                                                                curr_field  = row._2,
                                                                cocd  = row._3,
                                                                address  = row._4,
                                                                address_text_name  = row._5,
                                                                letter_header_text_name  = row._6,
                                                                footer_lines_text  =  row._7,
                                                                greeting_text_name  = row._8,
                                                                ref_sorg_field  = row._9,
                                                                custinterc  =     row._10,
                                                                rebprcactive  =   row._11,
                                                                ca  =   row._12,
                                                                porg  = row._13,
                                                                pgr  =  row._14,
                                                                vendor  = row._15,
                                                                plnt  =  row._16,
                                                                otyp  =  row._17,
                                                                cat  =   row._18,
                                                                mvtyp  = row._19,
                                                                sloc  =  row._20,
                                                                text_sds_sender  = row._21,
                                                                tax_code_for_sd_doc_field  = row._22,
                                                                vat_id_determ_field  = row._23,
                                                                numbering_time  =  row._24,
                                                                maximum_no_of_items_in_billing_doc_field  = row._25,
                                                                hide_in_f4  = row._26,
                                                                irm_cust_id = src_customer_data['cust_id'],
                                                                irm_job_id = src_customer_data['irm_job_id'],
                                                                irm_crd_date = src_customer_data['run_date'],
                                                                irm_upd_date = src_customer_data['run_date'],
                                                                irm_upd_user = src_customer_data['user_id'],
                                                                irm_crd_user = src_customer_data['user_id'])


                except Exception as e:
                    db_logger.exception(e)
