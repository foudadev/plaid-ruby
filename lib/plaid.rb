=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.79.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

# Common files
require 'plaid/api_client'
require 'plaid/api_error'
require 'plaid/version'
require 'plaid/configuration'

# Models
require 'plaid/models/ach_class'
require 'plaid/models/apr'
require 'plaid/models/account_access'
require 'plaid/models/account_assets'
require 'plaid/models/account_assets_all_of'
require 'plaid/models/account_balance'
require 'plaid/models/account_base'
require 'plaid/models/account_filter'
require 'plaid/models/account_filters_response'
require 'plaid/models/account_identity'
require 'plaid/models/account_identity_all_of'
require 'plaid/models/account_product_access'
require 'plaid/models/account_product_access_nullable'
require 'plaid/models/account_selection_cardinality'
require 'plaid/models/account_subtype'
require 'plaid/models/account_type'
require 'plaid/models/accounts_balance_get_request'
require 'plaid/models/accounts_balance_get_request_options'
require 'plaid/models/accounts_get_request'
require 'plaid/models/accounts_get_request_options'
require 'plaid/models/accounts_get_response'
require 'plaid/models/address'
require 'plaid/models/address_data'
require 'plaid/models/address_data_nullable'
require 'plaid/models/address_nullable'
require 'plaid/models/application'
require 'plaid/models/application_get_request'
require 'plaid/models/application_get_response'
require 'plaid/models/asset_report'
require 'plaid/models/asset_report_audit_copy_create_request'
require 'plaid/models/asset_report_audit_copy_create_response'
require 'plaid/models/asset_report_audit_copy_get_request'
require 'plaid/models/asset_report_audit_copy_remove_request'
require 'plaid/models/asset_report_audit_copy_remove_response'
require 'plaid/models/asset_report_create_request'
require 'plaid/models/asset_report_create_request_options'
require 'plaid/models/asset_report_create_response'
require 'plaid/models/asset_report_filter_request'
require 'plaid/models/asset_report_filter_response'
require 'plaid/models/asset_report_get_request'
require 'plaid/models/asset_report_get_response'
require 'plaid/models/asset_report_item'
require 'plaid/models/asset_report_pdf_get_request'
require 'plaid/models/asset_report_refresh_request'
require 'plaid/models/asset_report_refresh_request_options'
require 'plaid/models/asset_report_refresh_response'
require 'plaid/models/asset_report_relay_create_request'
require 'plaid/models/asset_report_relay_create_response'
require 'plaid/models/asset_report_relay_get_request'
require 'plaid/models/asset_report_relay_refresh_request'
require 'plaid/models/asset_report_relay_refresh_response'
require 'plaid/models/asset_report_relay_remove_request'
require 'plaid/models/asset_report_relay_remove_response'
require 'plaid/models/asset_report_remove_request'
require 'plaid/models/asset_report_remove_response'
require 'plaid/models/asset_report_transaction'
require 'plaid/models/asset_report_transaction_all_of'
require 'plaid/models/asset_report_user'
require 'plaid/models/assets_error_webhook'
require 'plaid/models/assets_product_ready_webhook'
require 'plaid/models/assets_relay_webhook'
require 'plaid/models/auth_get_numbers'
require 'plaid/models/auth_get_request'
require 'plaid/models/auth_get_request_options'
require 'plaid/models/auth_get_response'
require 'plaid/models/auth_metadata'
require 'plaid/models/auth_supported_methods'
require 'plaid/models/automatically_verified_webhook'
require 'plaid/models/bank_initiated_return_risk'
require 'plaid/models/bank_transfer'
require 'plaid/models/bank_transfer_balance'
require 'plaid/models/bank_transfer_balance_get_request'
require 'plaid/models/bank_transfer_balance_get_response'
require 'plaid/models/bank_transfer_cancel_request'
require 'plaid/models/bank_transfer_cancel_response'
require 'plaid/models/bank_transfer_create_request'
require 'plaid/models/bank_transfer_create_response'
require 'plaid/models/bank_transfer_direction'
require 'plaid/models/bank_transfer_event'
require 'plaid/models/bank_transfer_event_list_bank_transfer_type'
require 'plaid/models/bank_transfer_event_list_direction'
require 'plaid/models/bank_transfer_event_list_request'
require 'plaid/models/bank_transfer_event_list_response'
require 'plaid/models/bank_transfer_event_sync_request'
require 'plaid/models/bank_transfer_event_sync_response'
require 'plaid/models/bank_transfer_event_type'
require 'plaid/models/bank_transfer_failure'
require 'plaid/models/bank_transfer_get_request'
require 'plaid/models/bank_transfer_get_response'
require 'plaid/models/bank_transfer_list_request'
require 'plaid/models/bank_transfer_list_response'
require 'plaid/models/bank_transfer_migrate_account_request'
require 'plaid/models/bank_transfer_migrate_account_response'
require 'plaid/models/bank_transfer_network'
require 'plaid/models/bank_transfer_status'
require 'plaid/models/bank_transfer_sweep'
require 'plaid/models/bank_transfer_sweep_get_request'
require 'plaid/models/bank_transfer_sweep_get_response'
require 'plaid/models/bank_transfer_sweep_list_request'
require 'plaid/models/bank_transfer_sweep_list_response'
require 'plaid/models/bank_transfer_type'
require 'plaid/models/bank_transfer_user'
require 'plaid/models/bank_transfers_events_update_webhook'
require 'plaid/models/categories_get_response'
require 'plaid/models/category'
require 'plaid/models/cause'
require 'plaid/models/client_provided_enhanced_transaction'
require 'plaid/models/client_provided_raw_transaction'
require 'plaid/models/connected_application'
require 'plaid/models/country_code'
require 'plaid/models/credit_account_subtype'
require 'plaid/models/credit_bank_income'
require 'plaid/models/credit_bank_income_account'
require 'plaid/models/credit_bank_income_account_type'
require 'plaid/models/credit_bank_income_category'
require 'plaid/models/credit_bank_income_get_request'
require 'plaid/models/credit_bank_income_get_request_options'
require 'plaid/models/credit_bank_income_get_response'
require 'plaid/models/credit_bank_income_historical_summary'
require 'plaid/models/credit_bank_income_item'
require 'plaid/models/credit_bank_income_pay_frequency'
require 'plaid/models/credit_bank_income_source'
require 'plaid/models/credit_bank_income_summary'
require 'plaid/models/credit_bank_income_transaction'
require 'plaid/models/credit_card_liability'
require 'plaid/models/credit_filter'
require 'plaid/models/customer_initiated_return_risk'
require 'plaid/models/deductions'
require 'plaid/models/deductions_breakdown'
require 'plaid/models/deductions_total'
require 'plaid/models/default_update_webhook'
require 'plaid/models/deposit_switch_address_data'
require 'plaid/models/deposit_switch_alt_create_request'
require 'plaid/models/deposit_switch_alt_create_response'
require 'plaid/models/deposit_switch_create_request'
require 'plaid/models/deposit_switch_create_request_options'
require 'plaid/models/deposit_switch_create_response'
require 'plaid/models/deposit_switch_get_request'
require 'plaid/models/deposit_switch_get_response'
require 'plaid/models/deposit_switch_state_update_webhook'
require 'plaid/models/deposit_switch_target_account'
require 'plaid/models/deposit_switch_target_user'
require 'plaid/models/deposit_switch_token_create_request'
require 'plaid/models/deposit_switch_token_create_response'
require 'plaid/models/depository_account_subtype'
require 'plaid/models/depository_filter'
require 'plaid/models/distribution_breakdown'
require 'plaid/models/doc_type'
require 'plaid/models/document_metadata'
require 'plaid/models/earnings'
require 'plaid/models/earnings_breakdown'
require 'plaid/models/earnings_breakdown_canonical_description'
require 'plaid/models/earnings_total'
require 'plaid/models/email'
require 'plaid/models/employee'
require 'plaid/models/employee_income_summary_field_string'
require 'plaid/models/employer'
require 'plaid/models/employer_income_summary_field_string'
require 'plaid/models/employer_verification'
require 'plaid/models/employers_search_request'
require 'plaid/models/employers_search_response'
require 'plaid/models/employment_details'
require 'plaid/models/employment_verification'
require 'plaid/models/employment_verification_get_request'
require 'plaid/models/employment_verification_get_response'
require 'plaid/models/employment_verification_status'
require 'plaid/models/enhancements'
require 'plaid/models/error'
require 'plaid/models/external_payment_initiation_consent_options'
require 'plaid/models/external_payment_options'
require 'plaid/models/external_payment_refund_details'
require 'plaid/models/external_payment_schedule_base'
require 'plaid/models/external_payment_schedule_get'
require 'plaid/models/external_payment_schedule_request'
require 'plaid/models/health_incident'
require 'plaid/models/historical_balance'
require 'plaid/models/historical_update_webhook'
require 'plaid/models/holding'
require 'plaid/models/holdings_default_update_webhook'
require 'plaid/models/holdings_override'
require 'plaid/models/identity_default_update_webhook'
require 'plaid/models/identity_get_request'
require 'plaid/models/identity_get_request_options'
require 'plaid/models/identity_get_response'
require 'plaid/models/identity_update_types'
require 'plaid/models/incident_update'
require 'plaid/models/income_breakdown'
require 'plaid/models/income_breakdown_type'
require 'plaid/models/income_override'
require 'plaid/models/income_summary'
require 'plaid/models/income_summary_field_number'
require 'plaid/models/income_summary_field_string'
require 'plaid/models/income_verification_create_request'
require 'plaid/models/income_verification_create_request_options'
require 'plaid/models/income_verification_create_response'
require 'plaid/models/income_verification_documents_download_request'
require 'plaid/models/income_verification_paystubs_get_request'
require 'plaid/models/income_verification_paystubs_get_response'
require 'plaid/models/income_verification_precheck_confidence'
require 'plaid/models/income_verification_precheck_employer'
require 'plaid/models/income_verification_precheck_employer_address'
require 'plaid/models/income_verification_precheck_employer_address_data'
require 'plaid/models/income_verification_precheck_military_info'
require 'plaid/models/income_verification_precheck_request'
require 'plaid/models/income_verification_precheck_response'
require 'plaid/models/income_verification_precheck_user'
require 'plaid/models/income_verification_refresh_request'
require 'plaid/models/income_verification_refresh_response'
require 'plaid/models/income_verification_status_webhook'
require 'plaid/models/income_verification_taxforms_get_request'
require 'plaid/models/income_verification_taxforms_get_response'
require 'plaid/models/income_verification_webhook_status'
require 'plaid/models/inflow_model'
require 'plaid/models/initial_update_webhook'
require 'plaid/models/institution'
require 'plaid/models/institution_status'
require 'plaid/models/institutions_get_by_id_request'
require 'plaid/models/institutions_get_by_id_request_options'
require 'plaid/models/institutions_get_by_id_response'
require 'plaid/models/institutions_get_request'
require 'plaid/models/institutions_get_request_options'
require 'plaid/models/institutions_get_response'
require 'plaid/models/institutions_search_account_filter'
require 'plaid/models/institutions_search_payment_initiation_options'
require 'plaid/models/institutions_search_request'
require 'plaid/models/institutions_search_request_options'
require 'plaid/models/institutions_search_response'
require 'plaid/models/investment_account_subtype'
require 'plaid/models/investment_filter'
require 'plaid/models/investment_holdings_get_request_options'
require 'plaid/models/investment_transaction'
require 'plaid/models/investment_transaction_subtype'
require 'plaid/models/investment_transaction_type'
require 'plaid/models/investments_default_update_webhook'
require 'plaid/models/investments_holdings_get_request'
require 'plaid/models/investments_holdings_get_response'
require 'plaid/models/investments_transactions_get_request'
require 'plaid/models/investments_transactions_get_request_options'
require 'plaid/models/investments_transactions_get_response'
require 'plaid/models/investments_transactions_override'
require 'plaid/models/item'
require 'plaid/models/item_access_token_invalidate_request'
require 'plaid/models/item_access_token_invalidate_response'
require 'plaid/models/item_application_list_request'
require 'plaid/models/item_application_list_response'
require 'plaid/models/item_application_list_user_auth'
require 'plaid/models/item_application_scopes_update_request'
require 'plaid/models/item_application_scopes_update_response'
require 'plaid/models/item_error_webhook'
require 'plaid/models/item_get_request'
require 'plaid/models/item_get_response'
require 'plaid/models/item_import_request'
require 'plaid/models/item_import_request_options'
require 'plaid/models/item_import_request_user_auth'
require 'plaid/models/item_import_response'
require 'plaid/models/item_product_ready_webhook'
require 'plaid/models/item_public_token_create_request'
require 'plaid/models/item_public_token_create_response'
require 'plaid/models/item_public_token_exchange_request'
require 'plaid/models/item_public_token_exchange_response'
require 'plaid/models/item_remove_request'
require 'plaid/models/item_remove_response'
require 'plaid/models/item_status'
require 'plaid/models/item_status_investments'
require 'plaid/models/item_status_last_webhook'
require 'plaid/models/item_status_nullable'
require 'plaid/models/item_status_transactions'
require 'plaid/models/item_webhook_update_request'
require 'plaid/models/item_webhook_update_response'
require 'plaid/models/jwk_public_key'
require 'plaid/models/jwt_header'
require 'plaid/models/liabilities_default_update_webhook'
require 'plaid/models/liabilities_get_request'
require 'plaid/models/liabilities_get_request_options'
require 'plaid/models/liabilities_get_response'
require 'plaid/models/liabilities_object'
require 'plaid/models/liability_override'
require 'plaid/models/link_token_account_filters'
require 'plaid/models/link_token_create_credit_filter'
require 'plaid/models/link_token_create_depository_filter'
require 'plaid/models/link_token_create_investment_filter'
require 'plaid/models/link_token_create_loan_filter'
require 'plaid/models/link_token_create_request'
require 'plaid/models/link_token_create_request_account_subtypes'
require 'plaid/models/link_token_create_request_auth'
require 'plaid/models/link_token_create_request_deposit_switch'
require 'plaid/models/link_token_create_request_income_verification'
require 'plaid/models/link_token_create_request_payment_initiation'
require 'plaid/models/link_token_create_request_transfer'
require 'plaid/models/link_token_create_request_update'
require 'plaid/models/link_token_create_request_user'
require 'plaid/models/link_token_create_response'
require 'plaid/models/link_token_eu_config'
require 'plaid/models/link_token_get_metadata_response'
require 'plaid/models/link_token_get_request'
require 'plaid/models/link_token_get_response'
require 'plaid/models/loan_account_subtype'
require 'plaid/models/loan_filter'
require 'plaid/models/location'
require 'plaid/models/mfa'
require 'plaid/models/meta'
require 'plaid/models/mortgage_interest_rate'
require 'plaid/models/mortgage_liability'
require 'plaid/models/mortgage_property_address'
require 'plaid/models/net_pay'
require 'plaid/models/new_accounts_available_webhook'
require 'plaid/models/numbers'
require 'plaid/models/numbers_ach'
require 'plaid/models/numbers_ach_nullable'
require 'plaid/models/numbers_bacs'
require 'plaid/models/numbers_bacs_nullable'
require 'plaid/models/numbers_eft'
require 'plaid/models/numbers_eft_nullable'
require 'plaid/models/numbers_international'
require 'plaid/models/numbers_international_nullable'
require 'plaid/models/override_account_type'
require 'plaid/models/override_accounts'
require 'plaid/models/owner'
require 'plaid/models/owner_override'
require 'plaid/models/pslf_status'
require 'plaid/models/pay'
require 'plaid/models/pay_frequency'
require 'plaid/models/pay_frequency_value'
require 'plaid/models/pay_period_details'
require 'plaid/models/payment_amount'
require 'plaid/models/payment_amount_currency'
require 'plaid/models/payment_channel'
require 'plaid/models/payment_consent_max_payment_amount'
require 'plaid/models/payment_consent_periodic_alignment'
require 'plaid/models/payment_consent_periodic_amount'
require 'plaid/models/payment_consent_periodic_amount_amount'
require 'plaid/models/payment_consent_periodic_interval'
require 'plaid/models/payment_consent_valid_date_time'
require 'plaid/models/payment_initiation_address'
require 'plaid/models/payment_initiation_consent'
require 'plaid/models/payment_initiation_consent_constraints'
require 'plaid/models/payment_initiation_consent_create_request'
require 'plaid/models/payment_initiation_consent_create_response'
require 'plaid/models/payment_initiation_consent_get_request'
require 'plaid/models/payment_initiation_consent_get_response'
require 'plaid/models/payment_initiation_consent_payment_execute_request'
require 'plaid/models/payment_initiation_consent_payment_execute_response'
require 'plaid/models/payment_initiation_consent_revoke_request'
require 'plaid/models/payment_initiation_consent_revoke_response'
require 'plaid/models/payment_initiation_consent_scope'
require 'plaid/models/payment_initiation_consent_status'
require 'plaid/models/payment_initiation_metadata'
require 'plaid/models/payment_initiation_optional_restriction_bacs'
require 'plaid/models/payment_initiation_payment'
require 'plaid/models/payment_initiation_payment_create_request'
require 'plaid/models/payment_initiation_payment_create_response'
require 'plaid/models/payment_initiation_payment_create_status'
require 'plaid/models/payment_initiation_payment_get_request'
require 'plaid/models/payment_initiation_payment_get_response'
require 'plaid/models/payment_initiation_payment_list_request'
require 'plaid/models/payment_initiation_payment_list_response'
require 'plaid/models/payment_initiation_payment_reverse_request'
require 'plaid/models/payment_initiation_payment_reverse_response'
require 'plaid/models/payment_initiation_payment_status'
require 'plaid/models/payment_initiation_payment_token_create_request'
require 'plaid/models/payment_initiation_payment_token_create_response'
require 'plaid/models/payment_initiation_recipient'
require 'plaid/models/payment_initiation_recipient_create_request'
require 'plaid/models/payment_initiation_recipient_create_response'
require 'plaid/models/payment_initiation_recipient_get_request'
require 'plaid/models/payment_initiation_recipient_get_response'
require 'plaid/models/payment_initiation_recipient_get_response_all_of'
require 'plaid/models/payment_initiation_recipient_list_request'
require 'plaid/models/payment_initiation_recipient_list_response'
require 'plaid/models/payment_initiation_refund'
require 'plaid/models/payment_initiation_refund_status'
require 'plaid/models/payment_initiation_standing_order_metadata'
require 'plaid/models/payment_meta'
require 'plaid/models/payment_schedule_interval'
require 'plaid/models/payment_scheme'
require 'plaid/models/payment_status_update_webhook'
require 'plaid/models/paystub'
require 'plaid/models/paystub_address'
require 'plaid/models/paystub_deduction'
require 'plaid/models/paystub_details'
require 'plaid/models/paystub_employer'
require 'plaid/models/paystub_override'
require 'plaid/models/paystub_override_employee'
require 'plaid/models/paystub_override_employee_address'
require 'plaid/models/paystub_override_employer'
require 'plaid/models/paystub_pay_frequency'
require 'plaid/models/paystub_verification'
require 'plaid/models/paystub_verification_status'
require 'plaid/models/paystub_ytd_details'
require 'plaid/models/pending_expiration_webhook'
require 'plaid/models/personal_finance_category'
require 'plaid/models/phone_number'
require 'plaid/models/plaid_error'
require 'plaid/models/platform_ids'
require 'plaid/models/processor_apex_processor_token_create_request'
require 'plaid/models/processor_auth_get_request'
require 'plaid/models/processor_auth_get_response'
require 'plaid/models/processor_balance_get_request'
require 'plaid/models/processor_balance_get_request_options'
require 'plaid/models/processor_balance_get_response'
require 'plaid/models/processor_bank_transfer_create_request'
require 'plaid/models/processor_bank_transfer_create_response'
require 'plaid/models/processor_identity_get_request'
require 'plaid/models/processor_identity_get_response'
require 'plaid/models/processor_number'
require 'plaid/models/processor_stripe_bank_account_token_create_request'
require 'plaid/models/processor_stripe_bank_account_token_create_response'
require 'plaid/models/processor_token_create_request'
require 'plaid/models/processor_token_create_response'
require 'plaid/models/product_access'
require 'plaid/models/product_status'
require 'plaid/models/product_status_breakdown'
require 'plaid/models/products'
require 'plaid/models/projected_income_summary_field_number'
require 'plaid/models/recaptcha_required_error'
require 'plaid/models/recipient_bacs'
require 'plaid/models/recipient_bacs_nullable'
require 'plaid/models/recurring_transaction_frequency'
require 'plaid/models/relay_event'
require 'plaid/models/removed_transaction'
require 'plaid/models/requested_scopes'
require 'plaid/models/sandbox_bank_transfer_fire_webhook_request'
require 'plaid/models/sandbox_bank_transfer_fire_webhook_response'
require 'plaid/models/sandbox_bank_transfer_simulate_request'
require 'plaid/models/sandbox_bank_transfer_simulate_response'
require 'plaid/models/sandbox_income_fire_webhook_request'
require 'plaid/models/sandbox_income_fire_webhook_response'
require 'plaid/models/sandbox_item_fire_webhook_request'
require 'plaid/models/sandbox_item_fire_webhook_response'
require 'plaid/models/sandbox_item_reset_login_request'
require 'plaid/models/sandbox_item_reset_login_response'
require 'plaid/models/sandbox_item_set_verification_status_request'
require 'plaid/models/sandbox_item_set_verification_status_response'
require 'plaid/models/sandbox_oauth_select_accounts_request'
require 'plaid/models/sandbox_processor_token_create_request'
require 'plaid/models/sandbox_processor_token_create_request_options'
require 'plaid/models/sandbox_processor_token_create_response'
require 'plaid/models/sandbox_public_token_create_request'
require 'plaid/models/sandbox_public_token_create_request_options'
require 'plaid/models/sandbox_public_token_create_request_options_transactions'
require 'plaid/models/sandbox_public_token_create_response'
require 'plaid/models/sandbox_transfer_repayment_simulate_request'
require 'plaid/models/sandbox_transfer_repayment_simulate_response'
require 'plaid/models/sandbox_transfer_simulate_request'
require 'plaid/models/sandbox_transfer_simulate_response'
require 'plaid/models/sandbox_transfer_sweep_simulate_request'
require 'plaid/models/sandbox_transfer_sweep_simulate_response'
require 'plaid/models/scopes'
require 'plaid/models/scopes_context'
require 'plaid/models/scopes_nullable'
require 'plaid/models/security'
require 'plaid/models/security_override'
require 'plaid/models/sender_bacs_nullable'
require 'plaid/models/servicer_address_data'
require 'plaid/models/signal_address_data'
require 'plaid/models/signal_decision_report_request'
require 'plaid/models/signal_decision_report_response'
require 'plaid/models/signal_device'
require 'plaid/models/signal_evaluate_core_attributes'
require 'plaid/models/signal_evaluate_request'
require 'plaid/models/signal_evaluate_response'
require 'plaid/models/signal_person_name'
require 'plaid/models/signal_return_report_request'
require 'plaid/models/signal_return_report_response'
require 'plaid/models/signal_scores'
require 'plaid/models/signal_user'
require 'plaid/models/simulated_transfer_sweep'
require 'plaid/models/standalone_account_type'
require 'plaid/models/standalone_currency_code_list'
require 'plaid/models/standalone_investment_transaction_type'
require 'plaid/models/student_loan'
require 'plaid/models/student_loan_repayment_model'
require 'plaid/models/student_loan_status'
require 'plaid/models/student_repayment_plan'
require 'plaid/models/taxform'
require 'plaid/models/taxpayer_id'
require 'plaid/models/total'
require 'plaid/models/total_canonical_description'
require 'plaid/models/transaction'
require 'plaid/models/transaction_all_of'
require 'plaid/models/transaction_base'
require 'plaid/models/transaction_code'
require 'plaid/models/transaction_data'
require 'plaid/models/transaction_override'
require 'plaid/models/transaction_stream'
require 'plaid/models/transaction_stream_amount'
require 'plaid/models/transactions_enhance_get_request'
require 'plaid/models/transactions_enhance_get_response'
require 'plaid/models/transactions_get_request'
require 'plaid/models/transactions_get_request_options'
require 'plaid/models/transactions_get_response'
require 'plaid/models/transactions_recurring_get_request'
require 'plaid/models/transactions_recurring_get_response'
require 'plaid/models/transactions_refresh_request'
require 'plaid/models/transactions_refresh_response'
require 'plaid/models/transactions_removed_webhook'
require 'plaid/models/transactions_sync_request'
require 'plaid/models/transactions_sync_response'
require 'plaid/models/transfer'
require 'plaid/models/transfer_authorization'
require 'plaid/models/transfer_authorization_create_request'
require 'plaid/models/transfer_authorization_create_response'
require 'plaid/models/transfer_authorization_decision'
require 'plaid/models/transfer_authorization_decision_rationale'
require 'plaid/models/transfer_authorization_decision_rationale_code'
require 'plaid/models/transfer_authorization_device'
require 'plaid/models/transfer_authorization_guarantee_decision'
require 'plaid/models/transfer_authorization_guarantee_decision_rationale'
require 'plaid/models/transfer_authorization_guarantee_decision_rationale_code'
require 'plaid/models/transfer_authorization_proposed_transfer'
require 'plaid/models/transfer_cancel_request'
require 'plaid/models/transfer_cancel_response'
require 'plaid/models/transfer_create_request'
require 'plaid/models/transfer_create_response'
require 'plaid/models/transfer_event'
require 'plaid/models/transfer_event_list_request'
require 'plaid/models/transfer_event_list_response'
require 'plaid/models/transfer_event_list_transfer_type'
require 'plaid/models/transfer_event_sync_request'
require 'plaid/models/transfer_event_sync_response'
require 'plaid/models/transfer_event_type'
require 'plaid/models/transfer_failure'
require 'plaid/models/transfer_get_request'
require 'plaid/models/transfer_get_response'
require 'plaid/models/transfer_intent_authorization_decision'
require 'plaid/models/transfer_intent_create'
require 'plaid/models/transfer_intent_create_mode'
require 'plaid/models/transfer_intent_create_request'
require 'plaid/models/transfer_intent_create_response'
require 'plaid/models/transfer_intent_get'
require 'plaid/models/transfer_intent_get_failure_reason'
require 'plaid/models/transfer_intent_get_request'
require 'plaid/models/transfer_intent_get_response'
require 'plaid/models/transfer_intent_status'
require 'plaid/models/transfer_list_request'
require 'plaid/models/transfer_list_response'
require 'plaid/models/transfer_network'
require 'plaid/models/transfer_repayment'
require 'plaid/models/transfer_repayment_list_request'
require 'plaid/models/transfer_repayment_list_response'
require 'plaid/models/transfer_repayment_return'
require 'plaid/models/transfer_repayment_return_list_request'
require 'plaid/models/transfer_repayment_return_list_response'
require 'plaid/models/transfer_status'
require 'plaid/models/transfer_sweep'
require 'plaid/models/transfer_sweep_get_request'
require 'plaid/models/transfer_sweep_get_response'
require 'plaid/models/transfer_sweep_list_request'
require 'plaid/models/transfer_sweep_list_response'
require 'plaid/models/transfer_sweep_status'
require 'plaid/models/transfer_type'
require 'plaid/models/transfer_user_address_in_request'
require 'plaid/models/transfer_user_address_in_response'
require 'plaid/models/transfer_user_in_request'
require 'plaid/models/transfer_user_in_response'
require 'plaid/models/user_custom_password'
require 'plaid/models/user_permission_revoked_webhook'
require 'plaid/models/verification_attribute'
require 'plaid/models/verification_expired_webhook'
require 'plaid/models/verification_refresh_status'
require 'plaid/models/verification_status'
require 'plaid/models/w2'
require 'plaid/models/w2_box12'
require 'plaid/models/w2_state_and_local_wages'
require 'plaid/models/wallet_balance'
require 'plaid/models/wallet_get_request'
require 'plaid/models/wallet_get_response'
require 'plaid/models/wallet_transaction'
require 'plaid/models/wallet_transaction_amount'
require 'plaid/models/wallet_transaction_counterparty'
require 'plaid/models/wallet_transaction_counterparty_bacs'
require 'plaid/models/wallet_transaction_counterparty_numbers'
require 'plaid/models/wallet_transaction_execute_request'
require 'plaid/models/wallet_transaction_execute_response'
require 'plaid/models/wallet_transaction_status'
require 'plaid/models/wallet_transactions_list_request'
require 'plaid/models/wallet_transactions_list_response'
require 'plaid/models/warning'
require 'plaid/models/webhook_update_acknowledged_webhook'
require 'plaid/models/webhook_verification_key_get_request'
require 'plaid/models/webhook_verification_key_get_response'
require 'plaid/models/ytd_gross_income_summary_field_number'
require 'plaid/models/ytd_net_income_summary_field_number'

# APIs
require 'plaid/api/plaid_api'

module Plaid
  class << self
    # Customize default settings for the SDK using block.
    #   Plaid.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
