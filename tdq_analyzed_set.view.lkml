view: tdq_analyzed_set {
  sql_table_name: public.tdq_analyzed_set ;;

  dimension: an_set_pk {
    type: number
    sql: ${TABLE}.an_set_pk ;;
  }

  dimension: elt_a_pk {
    type: number
    sql: ${TABLE}.elt_a_pk ;;
  }

  dimension: elt_b_pk {
    type: number
    sql: ${TABLE}.elt_b_pk ;;
  }

  dimension: match_ind_pk {
    type: number
    sql: ${TABLE}.match_ind_pk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
