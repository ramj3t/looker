view: test_column_analysis {
  sql_table_name: public.test_column_analysis ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: expression_name {
    type: string
    sql: ${TABLE}.expression_name ;;
  }

  dimension: field {
    type: string
    sql: ${TABLE}.field ;;
  }

  dimension: indicator {
    type: string
    sql: ${TABLE}.indicator ;;
  }

  dimension: pattern_value {
    type: string
    sql: ${TABLE}.pattern_value ;;
  }

  dimension: profile_name {
    type: string
    sql: ${TABLE}.profile_name ;;
  }

  measure: remainder_row_count {
    type: sum
    sql: ${TABLE}.remainder_row_count ;;
  }

  measure: rnum {
    type: sum
    sql: ${TABLE}.rnum ;;
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

  measure: total_row_count {
    type: number
    sql: ${TABLE}.total_row_count ;;
  }

  measure: value_count {
    type: sum
    sql: ${TABLE}.value_count ;;
  }

  measure: count {
    type: count
    drill_fields: [profile_name, expression_name]
  }
}
