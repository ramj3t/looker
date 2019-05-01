view: donation_column_analysis {
  sql_table_name: public.donation_column_analysis ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
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

  dimension: total_row_count {
    type: number
    sql: ${TABLE}.total_row_count ;;
  }

  measure: count_1 {
    type: count
    drill_fields: [profile_name, expression_name]
  }
}
