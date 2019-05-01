view: tdq_day_time {
  sql_table_name: public.tdq_day_time ;;

  dimension: time_hour {
    type: number
    sql: ${TABLE}.time_hour ;;
  }

  dimension: time_label {
    type: string
    sql: ${TABLE}.time_label ;;
  }

  dimension: time_minute {
    type: number
    sql: ${TABLE}.time_minute ;;
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
