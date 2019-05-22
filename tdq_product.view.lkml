view: tdq_product {
  sql_table_name: public.tdq_product ;;

  dimension: pr_display_version {
    type: string
    sql: ${TABLE}.pr_display_version ;;
  }

  dimension: pr_name {
    type: string
    sql: ${TABLE}.pr_name ;;
  }

  dimension: pr_version {
    type: string
    sql: ${TABLE}.pr_version ;;
  }

  measure: count {
    type: count
    drill_fields: [pr_name]
  }
}
