view: tdq_migration {
  sql_table_name: public.tdq_migration ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: migration {
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
    sql: ${TABLE}.migration_date ;;
  }

  dimension: migration_name {
    type: string
    sql: ${TABLE}.migration_name ;;
  }

  dimension: previous_version {
    type: string
    sql: ${TABLE}.previous_version ;;
  }

  dimension: update_version {
    type: string
    sql: ${TABLE}.update_version ;;
  }

  measure: count {
    type: count
    drill_fields: [id, migration_name]
  }
}
