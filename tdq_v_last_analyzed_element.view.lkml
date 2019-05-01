view: tdq_v_last_analyzed_element {
  sql_table_name: public.tdq_v_last_analyzed_element ;;

  dimension: elt_ctx_group_id {
    type: string
    sql: ${TABLE}.elt_ctx_group_id ;;
  }

  dimension: elt_ctx_name {
    type: string
    sql: ${TABLE}.elt_ctx_name ;;
  }

  dimension: elt_uuid {
    type: string
    sql: ${TABLE}.elt_uuid ;;
  }

  dimension: last_version {
    type: number
    sql: ${TABLE}.last_version ;;
  }

  measure: count {
    type: count
    drill_fields: [elt_ctx_name]
  }
}
