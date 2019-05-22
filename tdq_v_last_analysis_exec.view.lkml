view: tdq_v_last_analysis_exec {
  sql_table_name: public.tdq_v_last_analysis_exec ;;

  dimension: analysis_pk {
    type: number
    sql: ${TABLE}.analysis_pk ;;
  }

  dimension_group: last_runtime {
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
    sql: ${TABLE}.last_runtime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
