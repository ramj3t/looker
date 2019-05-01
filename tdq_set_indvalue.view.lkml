view: tdq_set_indvalue {
  sql_table_name: public.tdq_set_indvalue ;;

  dimension: an_duration {
    type: number
    sql: ${TABLE}.an_duration ;;
  }

  dimension: an_pk {
    type: number
    sql: ${TABLE}.an_pk ;;
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

  dimension: cal_pk {
    type: number
    sql: ${TABLE}.cal_pk ;;
  }

  dimension: elt_pk {
    type: number
    sql: ${TABLE}.elt_pk ;;
  }

  dimension: ind_parent_pk {
    type: number
    sql: ${TABLE}.ind_parent_pk ;;
  }

  dimension: ind_pk {
    type: number
    sql: ${TABLE}.ind_pk ;;
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

  dimension: set_indv_pk {
    type: number
    sql: ${TABLE}.set_indv_pk ;;
  }

  dimension: siv_int_value {
    type: number
    sql: ${TABLE}.siv_int_value ;;
  }

  dimension: siv_row_count {
    type: number
    sql: ${TABLE}.siv_row_count ;;
  }

  dimension: siv_thresh_hi {
    type: number
    sql: ${TABLE}.siv_thresh_hi ;;
  }

  dimension: siv_thresh_low {
    type: number
    sql: ${TABLE}.siv_thresh_low ;;
  }

  dimension: siv_thresh_ok {
    type: string
    sql: ${TABLE}.siv_thresh_ok ;;
  }

  dimension: siv_thresh_perc_hi {
    type: number
    sql: ${TABLE}.siv_thresh_perc_hi ;;
  }

  dimension: siv_thresh_perc_low {
    type: number
    sql: ${TABLE}.siv_thresh_perc_low ;;
  }

  dimension: siv_thresh_perc_ok {
    type: string
    sql: ${TABLE}.siv_thresh_perc_ok ;;
  }

  dimension: table_pk {
    type: number
    sql: ${TABLE}.table_pk ;;
  }

  dimension: time_pk {
    type: number
    sql: ${TABLE}.time_pk ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
