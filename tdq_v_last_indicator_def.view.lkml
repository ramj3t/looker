view: tdq_v_last_indicator_def {
  sql_table_name: public.tdq_v_last_indicator_def ;;

  dimension: ind_uuid {
    type: string
    sql: ${TABLE}.ind_uuid ;;
  }

  dimension: last_version {
    type: number
    sql: ${TABLE}.last_version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
