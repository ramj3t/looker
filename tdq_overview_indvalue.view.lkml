view: tdq_overview_indvalue {
  sql_table_name: public.tdq_overview_indvalue ;;

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

  dimension: time_pk {
    type: number
    sql: ${TABLE}.time_pk ;;
  }

  dimension: tv_catalogcount {
    type: number
    sql: ${TABLE}.tv_catalogcount ;;
  }

  dimension: tv_indexcount {
    type: number
    sql: ${TABLE}.tv_indexcount ;;
  }

  dimension: tv_keycount {
    type: number
    sql: ${TABLE}.tv_keycount ;;
  }

  dimension: tv_name {
    type: string
    sql: ${TABLE}.tv_name ;;
  }

  dimension: tv_pk {
    type: number
    sql: ${TABLE}.tv_pk ;;
  }

  dimension: tv_rowcount {
    type: number
    sql: ${TABLE}.tv_rowcount ;;
  }

  dimension: tv_schemacount {
    type: number
    sql: ${TABLE}.tv_schemacount ;;
  }

  dimension: tv_table_filter {
    type: string
    sql: ${TABLE}.tv_table_filter ;;
  }

  dimension: tv_tablecount {
    type: number
    sql: ${TABLE}.tv_tablecount ;;
  }

  dimension: tv_triggercount {
    type: number
    sql: ${TABLE}.tv_triggercount ;;
  }

  dimension: tv_view_filter {
    type: string
    sql: ${TABLE}.tv_view_filter ;;
  }

  dimension: tv_viewcount {
    type: number
    sql: ${TABLE}.tv_viewcount ;;
  }

  measure: count {
    type: count
    drill_fields: [tv_name]
  }
}
