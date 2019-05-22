view: tdq_indicator_definition {
  sql_table_name: public.tdq_indicator_definition ;;

  dimension_group: ind_begin {
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
    sql: ${TABLE}.ind_begin_date ;;
  }

  dimension: ind_categ_uuid {
    type: string
    sql: ${TABLE}.ind_categ_uuid ;;
  }

  dimension: ind_category {
    type: string
    sql: ${TABLE}.ind_category ;;
  }

  dimension: ind_critical {
    type: number
    sql: ${TABLE}.ind_critical ;;
  }

  dimension: ind_description {
    type: string
    sql: ${TABLE}.ind_description ;;
  }

  dimension_group: ind_end {
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
    sql: ${TABLE}.ind_end_date ;;
  }

  dimension: ind_label {
    type: string
    sql: ${TABLE}.ind_label ;;
  }

  dimension: ind_pk {
    type: number
    sql: ${TABLE}.ind_pk ;;
  }

  dimension: ind_purpose {
    type: string
    sql: ${TABLE}.ind_purpose ;;
  }

  dimension: ind_uuid {
    type: string
    sql: ${TABLE}.ind_uuid ;;
  }

  dimension: ind_version {
    type: number
    sql: ${TABLE}.ind_version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
