view: tdq_analysis {
  sql_table_name: public.tdq_analysis ;;

  dimension: an_author {
    type: string
    sql: ${TABLE}.an_author ;;
  }

  dimension_group: an_begin {
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
    sql: ${TABLE}.an_begin_date ;;
  }

  dimension_group: an_creation {
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
    sql: ${TABLE}.an_creation_date ;;
  }

  dimension: an_data_filter {
    type: string
    sql: ${TABLE}.an_data_filter ;;
  }

  dimension: an_description {
    type: string
    sql: ${TABLE}.an_description ;;
  }

  dimension_group: an_end {
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
    sql: ${TABLE}.an_end_date ;;
  }

  dimension: an_label {
    type: string
    sql: ${TABLE}.an_label ;;
  }

  dimension: an_pk {
    type: number
    sql: ${TABLE}.an_pk ;;
  }

  dimension: an_purpose {
    type: string
    sql: ${TABLE}.an_purpose ;;
  }

  dimension: an_status {
    type: string
    sql: ${TABLE}.an_status ;;
  }

  dimension: an_type {
    type: string
    sql: ${TABLE}.an_type ;;
  }

  dimension: an_uuid {
    type: string
    sql: ${TABLE}.an_uuid ;;
  }

  dimension: an_version {
    type: number
    sql: ${TABLE}.an_version ;;
  }

  dimension: rep_author {
    type: string
    sql: ${TABLE}.rep_author ;;
  }

  dimension_group: rep_creation {
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
    sql: ${TABLE}.rep_creation_date ;;
  }

  dimension: rep_description {
    type: string
    sql: ${TABLE}.rep_description ;;
  }

  dimension: rep_label {
    type: string
    sql: ${TABLE}.rep_label ;;
  }

  dimension: rep_purpose {
    type: string
    sql: ${TABLE}.rep_purpose ;;
  }

  dimension: rep_status {
    type: string
    sql: ${TABLE}.rep_status ;;
  }

  dimension: rep_uuid {
    type: string
    sql: ${TABLE}.rep_uuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
