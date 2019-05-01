view: tdq_group_statistics {
  sql_table_name: public.tdq_group_statistics ;;

  dimension: g_group_count {
    type: number
    sql: ${TABLE}.g_group_count ;;
  }

  dimension: g_pk {
    type: number
    sql: ${TABLE}.g_pk ;;
  }

  dimension: g_record_count {
    type: number
    sql: ${TABLE}.g_record_count ;;
  }

  dimension: g_size {
    type: number
    sql: ${TABLE}.g_size ;;
  }

  dimension: m_pk {
    type: number
    sql: ${TABLE}.m_pk ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
