view: tdq_values {
  sql_table_name: public.tdq_values ;;

  dimension: val_pk {
    type: number
    sql: ${TABLE}.val_pk ;;
  }

  dimension: val_string {
    type: string
    sql: ${TABLE}.val_string ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
