view: tdq_v_last_analysis {
  sql_table_name: public.tdq_v_last_analysis ;;

  dimension: an_uuid {
    type: string
    sql: ${TABLE}.an_uuid ;;
  }

  dimension: last_version {
    type: number
    sql: ${TABLE}.last_version ;;
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
