view: tdq_matching_indvalue {
  sql_table_name: public.tdq_matching_indvalue ;;

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

  dimension: m_match_count {
    type: number
    sql: ${TABLE}.m_match_count ;;
  }

  dimension: m_pk {
    type: number
    sql: ${TABLE}.m_pk ;;
  }

  dimension: m_row_count {
    type: number
    sql: ${TABLE}.m_row_count ;;
  }

  dimension: m_suspect_count {
    type: number
    sql: ${TABLE}.m_suspect_count ;;
  }

  dimension: m_unique_count {
    type: number
    sql: ${TABLE}.m_unique_count ;;
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
