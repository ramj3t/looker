view: final_table {
  sql_table_name: public.FINAL_TABLE ;;

  dimension: field0 {
    type: string
    sql: ${TABLE}.field0 ;;
  }

  dimension: field1 {
    type: string
    sql: ${TABLE}.field1 ;;
  }

  dimension: field2 {
    type: number
    sql: ${TABLE}.field2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
