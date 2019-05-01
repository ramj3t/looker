view: tdq_v_ind_histo {
  sql_table_name: public.tdq_v_ind_histo ;;

  dimension: an_author {
    type: string
    sql: ${TABLE}.an_author ;;
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

  dimension: an_label {
    type: string
    sql: ${TABLE}.an_label ;;
  }

  dimension: an_uuid {
    type: string
    sql: ${TABLE}.an_uuid ;;
  }

  dimension_group: cal {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cal_date ;;
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

  dimension: elt_connection_uuid {
    type: string
    sql: ${TABLE}.elt_connection_uuid ;;
  }

  dimension: elt_schema_name {
    type: string
    sql: ${TABLE}.elt_schema_name ;;
  }

  dimension: elt_table_name {
    type: string
    sql: ${TABLE}.elt_table_name ;;
  }

  dimension: elt_uuid {
    type: string
    sql: ${TABLE}.elt_uuid ;;
  }

  dimension: ind_categ_uuid {
    type: string
    sql: ${TABLE}.ind_categ_uuid ;;
  }

  dimension: ind_category {
    type: string
    sql: ${TABLE}.ind_category ;;
  }

  dimension: ind_label {
    type: string
    sql: ${TABLE}.ind_label ;;
  }

  dimension: ind_uuid {
    type: string
    sql: ${TABLE}.ind_uuid ;;
  }

  dimension: indv_int_value {
    type: number
    sql: ${TABLE}.indv_int_value ;;
  }

  dimension: indv_row_count {
    type: number
    sql: ${TABLE}.indv_row_count ;;
  }

  dimension: ino_regexp {
    type: string
    sql: ${TABLE}.ino_regexp ;;
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

  dimension: rep_label {
    type: string
    sql: ${TABLE}.rep_label ;;
  }

  dimension: rep_status {
    type: string
    sql: ${TABLE}.rep_status ;;
  }

  dimension: rep_uuid {
    type: string
    sql: ${TABLE}.rep_uuid ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.run_time ;;
  }

  dimension: time_hour {
    type: number
    sql: ${TABLE}.time_hour ;;
  }

  dimension: time_minute {
    type: number
    sql: ${TABLE}.time_minute ;;
  }

  measure: count {
    type: count
    drill_fields: [elt_column_name, elt_connection_name, elt_catalog_name, elt_schema_name, elt_table_name]
  }
}
