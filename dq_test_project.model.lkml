connection: "postgres_talend_dq_mart"

# include all the views
include: "*.view"

datagroup: dq_test_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dq_test_project_default_datagroup

explore: donation_column_analysis {}

explore: final_table {}

explore: tdq_analysis {}

explore: tdq_analyzed_element {}

explore: tdq_analyzed_set {}

explore: tdq_calendar {}

explore: tdq_day_time {}

explore: tdq_group_statistics {}

explore: tdq_indicator_definition {}

explore: tdq_indicator_options {}

explore: tdq_indicator_value {}

explore: tdq_match_indvalue {}

explore: tdq_matching_indvalue {}

explore: tdq_migration {}

explore: tdq_overview_indvalue {}

explore: tdq_product {}

explore: tdq_set_indvalue {}

explore: tdq_table_analyzed_set {}

explore: tdq_v_all_run_analysis {}

explore: tdq_v_all_run_match_analysis {}

explore: tdq_v_all_run_overview_analy {}

explore: tdq_v_analysis {}

explore: tdq_v_analyzed_element {}

explore: tdq_v_ind_histo {}

explore: tdq_v_indicator_definition {}

explore: tdq_v_last_analysis {}

explore: tdq_v_last_analysis_exec {}

explore: tdq_v_last_analyzed_element {}

explore: tdq_v_last_indicator_def {}

explore: tdq_v_last_match_analysis_exec {}

explore: tdq_v_last_overview_analy_exec {}

explore: tdq_v_last_run_analysis {}

explore: tdq_v_last_run_match_analysis {}

explore: tdq_v_last_run_overview_analy {}

explore: tdq_v_olap_simpl_indicator {}

explore: tdq_v_olap_summary_indicator {}

explore: tdq_v_olap_textstat_indicator {}

explore: tdq_v_simple_indics {}

explore: tdq_values {}

explore: test_column_analysis {}
