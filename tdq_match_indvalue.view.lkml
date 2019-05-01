view: tdq_match_indvalue {
  sql_table_name: public.tdq_match_indvalue ;;

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

  dimension: indicator_pk {
    type: number
    sql: ${TABLE}.indicator_pk ;;
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

  dimension: indv_match_count {
    type: number
    sql: ${TABLE}.indv_match_count ;;
  }

  dimension: indv_match_percent {
    type: number
    sql: ${TABLE}.indv_match_percent ;;
  }

  dimension: indv_row_count {
    type: number
    sql: ${TABLE}.indv_row_count ;;
  }

  dimension: m_pk {
    type: number
    sql: ${TABLE}.m_pk ;;
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

  dimension: table_a_pk {
    type: number
    sql: ${TABLE}.table_a_pk ;;
  }

  dimension: table_b_pk {
    type: number
    sql: ${TABLE}.table_b_pk ;;
  }

  dimension: time_pk {
    type: number
    sql: ${TABLE}.time_pk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
