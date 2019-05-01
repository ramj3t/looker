view: tdq_analyzed_element {
  sql_table_name: public.tdq_analyzed_element ;;

  dimension_group: elt_begin {
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
    sql: ${TABLE}.elt_begin_date ;;
  }

  dimension: elt_catalog_name {
    type: string
    sql: ${TABLE}.elt_catalog_name ;;
  }

  dimension: elt_column_name {
    type: string
    sql: ${TABLE}.elt_column_name ;;
  }

  dimension: elt_connection_name {
    type: string
    sql: ${TABLE}.elt_connection_name ;;
  }

  dimension: elt_connection_url {
    type: string
    sql: ${TABLE}.elt_connection_url ;;
  }

  dimension: elt_connection_uuid {
    type: string
    sql: ${TABLE}.elt_connection_uuid ;;
  }

  dimension: elt_ctx_group_id {
    type: string
    sql: ${TABLE}.elt_ctx_group_id ;;
  }

  dimension: elt_ctx_group_name {
    type: string
    sql: ${TABLE}.elt_ctx_group_name ;;
  }

  dimension: elt_ctx_name {
    type: string
    sql: ${TABLE}.elt_ctx_name ;;
  }

  dimension_group: elt_end {
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
    sql: ${TABLE}.elt_end_date ;;
  }

  dimension: elt_pk {
    type: number
    sql: ${TABLE}.elt_pk ;;
  }

  dimension: elt_project_description {
    type: string
    sql: ${TABLE}.elt_project_description ;;
  }

  dimension: elt_project_name {
    type: string
    sql: ${TABLE}.elt_project_name ;;
  }

  dimension: elt_schema_name {
    type: string
    sql: ${TABLE}.elt_schema_name ;;
  }

  dimension: elt_size {
    type: number
    sql: ${TABLE}.elt_size ;;
  }

  dimension: elt_table_name {
    type: string
    sql: ${TABLE}.elt_table_name ;;
  }

  dimension: elt_uuid {
    type: string
    sql: ${TABLE}.elt_uuid ;;
  }

  dimension: elt_version {
    type: number
    sql: ${TABLE}.elt_version ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      elt_project_name,
      elt_ctx_group_name,
      elt_ctx_name,
      elt_connection_name,
      elt_catalog_name,
      elt_schema_name,
      elt_table_name,
      elt_column_name
    ]
  }
}
