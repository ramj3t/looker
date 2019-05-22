view: party {
  sql_table_name: datahub_ODS.party ;;

  dimension: party_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.party_id ;;
  }

  dimension: insert_load_id {
    type: number
    sql: ${TABLE}.insert_load_id ;;
  }

  dimension: party_desc {
    type: string
    sql: ${TABLE}.party_desc ;;
  }

  dimension: party_end_dt {
    type: string
    sql: ${TABLE}.party_end_dt ;;
  }

  dimension: party_num {
    type: number
    sql: ${TABLE}.party_num ;;
  }

  dimension: party_source_cd {
    type: string
    sql: ${TABLE}.party_source_cd ;;
  }

  dimension: party_start_dt {
    type: string
    sql: ${TABLE}.party_start_dt ;;
  }

  dimension: party_subtype_cd {
    type: string
    sql: ${TABLE}.party_subtype_cd ;;
  }

  dimension: source_system_cd {
    type: string
    sql: ${TABLE}.source_system_cd ;;
  }

  dimension: update_load_id {
    type: number
    sql: ${TABLE}.update_load_id ;;
  }

  measure: count {
    type: count
    drill_fields: [party_id, electronic_address.count, individual.count, phone_numbers.count, street_address.count]
  }
}
