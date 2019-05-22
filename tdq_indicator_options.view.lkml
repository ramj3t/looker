view: tdq_indicator_options {
  sql_table_name: public.tdq_indicator_options ;;

  dimension: ino_case_sensitive {
    type: string
    sql: ${TABLE}.ino_case_sensitive ;;
  }

  dimension: ino_count_blanks {
    type: string
    sql: ${TABLE}.ino_count_blanks ;;
  }

  dimension: ino_count_nulls {
    type: string
    sql: ${TABLE}.ino_count_nulls ;;
  }

  dimension: ino_pk {
    type: number
    sql: ${TABLE}.ino_pk ;;
  }

  dimension: ino_regexp {
    type: string
    sql: ${TABLE}.ino_regexp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
