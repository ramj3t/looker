view: tdq_calendar {
  sql_table_name: public.tdq_calendar ;;

  dimension_group: cal {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cal_date ;;
  }

  dimension: cal_day_in_month {
    type: number
    sql: ${TABLE}.cal_day_in_month ;;
  }

  dimension: cal_day_in_year {
    type: number
    sql: ${TABLE}.cal_day_in_year ;;
  }

  dimension: cal_day_name {
    type: string
    sql: ${TABLE}.cal_day_name ;;
  }

  dimension: cal_day_off {
    type: string
    sql: ${TABLE}.cal_day_off ;;
  }

  dimension: cal_last_month_day {
    type: number
    sql: ${TABLE}.cal_last_month_day ;;
  }

  dimension: cal_last_week_day {
    type: number
    sql: ${TABLE}.cal_last_week_day ;;
  }

  dimension: cal_month_1 {
    type: number
    sql: ${TABLE}.cal_month ;;
  }

  dimension: cal_month_name {
    type: string
    sql: ${TABLE}.cal_month_name ;;
  }

  dimension: cal_month_period {
    type: string
    sql: ${TABLE}.cal_month_period ;;
  }

  dimension: cal_pk {
    type: number
    sql: ${TABLE}.cal_pk ;;
  }

  dimension: cal_quarter_1 {
    type: number
    sql: ${TABLE}.cal_quarter ;;
  }

  dimension: cal_quarter_period {
    type: string
    sql: ${TABLE}.cal_quarter_period ;;
  }

  dimension: cal_semester {
    type: number
    sql: ${TABLE}.cal_semester ;;
  }

  dimension: cal_semester_period {
    type: string
    sql: ${TABLE}.cal_semester_period ;;
  }

  dimension: cal_spec_day_label {
    type: string
    sql: ${TABLE}.cal_spec_day_label ;;
  }

  dimension: cal_special_day {
    type: string
    sql: ${TABLE}.cal_special_day ;;
  }

  dimension: cal_week_day {
    type: number
    sql: ${TABLE}.cal_week_day ;;
  }

  dimension: cal_week_num {
    type: number
    sql: ${TABLE}.cal_week_num ;;
  }

  dimension: cal_week_period {
    type: string
    sql: ${TABLE}.cal_week_period ;;
  }

  dimension: cal_year_1 {
    type: number
    sql: ${TABLE}.cal_year ;;
  }

  measure: count {
    type: count
    drill_fields: [cal_day_name, cal_month_name]
  }
}
