view: tdq_indicator_value {
  sql_table_name: public.tdq_indicator_value ;;

  dimension: an_duration {
    type: number
    sql: ${TABLE}.an_duration ;;
  }

  dimension_group: an_runtime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.an_runtime ;;
  }

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

  dimension: ind_type {
    type: string
    sql: ${TABLE}.ind_type ;;
  }

  dimension: indicator_pk {
    type: number
    sql: ${TABLE}.indicator_pk ;;
  }

  dimension_group: indv_date_value {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.indv_date_value ;;
  }

  dimension: indv_dthresh_hi {
    type: number
    sql: ${TABLE}.indv_dthresh_hi ;;
  }

  dimension: indv_dthresh_low {
    type: number
    sql: ${TABLE}.indv_dthresh_low ;;
  }

  dimension: indv_dthresh_ok {
    type: string
    sql: ${TABLE}.indv_dthresh_ok ;;
  }

  dimension: indv_exp_val {
    type: string
    sql: ${TABLE}.indv_exp_val ;;
  }

  dimension: indv_exp_val_ok {
    type: string
    sql: ${TABLE}.indv_exp_val_ok ;;
  }

  dimension_group: indv_idatethresh_hi {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.indv_idatethresh_hi ;;
  }

  dimension_group: indv_idatethresh_lo {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.indv_idatethresh_lo ;;
  }

  dimension: indv_idatethresh_ok {
    type: string
    sql: ${TABLE}.indv_idatethresh_ok ;;
  }

  dimension: indv_int_value {
    type: number
    sql: ${TABLE}.indv_int_value ;;
  }

  dimension: indv_ithresh_hi {
    type: number
    sql: ${TABLE}.indv_ithresh_hi ;;
  }

  dimension: indv_ithresh_low {
    type: number
    sql: ${TABLE}.indv_ithresh_low ;;
  }

  dimension: indv_ithresh_ok {
    type: string
    sql: ${TABLE}.indv_ithresh_ok ;;
  }

  dimension: indv_ithresh_perc_hi {
    type: number
    sql: ${TABLE}.indv_ithresh_perc_hi ;;
  }

  dimension: indv_ithresh_perc_low {
    type: number
    sql: ${TABLE}.indv_ithresh_perc_low ;;
  }

  dimension: indv_ithresh_perc_ok {
    type: string
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

  dimension: rep_duration {
    type: number
    sql: ${TABLE}.rep_duration ;;
  }

  dimension_group: rep_runtime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.rep_runtime ;;
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
