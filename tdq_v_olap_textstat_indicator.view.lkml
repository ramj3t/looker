view: tdq_v_olap_textstat_indicator {
  sql_table_name: public.tdq_v_olap_textstat_indicator ;;

  dimension: analysis_pk {
    type: number
    sql: ${TABLE}.analysis_pk ;;
  }

  dimension: calendar_pk {
    type: number
    sql: ${TABLE}.calendar_pk ;;
  }

  dimension: element_pk {
    type: number
    sql: ${TABLE}.element_pk ;;
  }

  dimension: indicator_pk {
    type: number
    sql: ${TABLE}.indicator_pk ;;
  }

  dimension: indv_dthresh_ok {
    type: number
    sql: ${TABLE}.indv_dthresh_ok ;;
  }

  dimension: indv_int_value {
    type: number
    sql: ${TABLE}.indv_int_value ;;
  }

  dimension: indv_ithresh_ok {
    type: number
    sql: ${TABLE}.indv_ithresh_ok ;;
  }

  dimension: indv_ithresh_perc_ok {
    type: number
    sql: ${TABLE}.indv_ithresh_perc_ok ;;
  }

  dimension: indv_pk {
    type: number
    sql: ${TABLE}.indv_pk ;;
  }

  dimension: indv_real_value {
    type: number
    sql: ${TABLE}.indv_real_value ;;
  }

  dimension: indv_row_count {
    type: number
    sql: ${TABLE}.indv_row_count ;;
  }

  dimension: indv_value_type_indicator {
    type: string
    sql: ${TABLE}.indv_value_type_indicator ;;
  }

  dimension: option_pk {
    type: number
    sql: ${TABLE}.option_pk ;;
  }

  dimension: time_pk {
    type: number
    sql: ${TABLE}.time_pk ;;
  }

  dimension: value_pk {
    type: number
    sql: ${TABLE}.value_pk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
