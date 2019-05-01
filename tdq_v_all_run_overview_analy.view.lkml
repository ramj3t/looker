view: tdq_v_all_run_overview_analy {
  sql_table_name: public.tdq_v_all_run_overview_analy ;;

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

  dimension: cal_pk {
    type: number
    sql: ${TABLE}.cal_pk ;;
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
