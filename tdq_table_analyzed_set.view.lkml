view: tdq_table_analyzed_set {
  sql_table_name: public.tdq_table_analyzed_set ;;

  dimension: an_pk {
    type: number
    sql: ${TABLE}.an_pk ;;
  }

  dimension: an_set_pk {
    type: number
    sql: ${TABLE}.an_set_pk ;;
  }

  dimension: elt_pk {
    type: number
    sql: ${TABLE}.elt_pk ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
