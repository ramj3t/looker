view: phone_numbers {
  sql_table_name: datahub_ODS.phone_numbers ;;

  dimension: individual_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.individual_id ;;
  }

  dimension: insert_load_id {
    type: number
    sql: ${TABLE}.insert_load_id ;;
  }

  dimension: locator_id {
    type: number
    sql: ${TABLE}.locator_id ;;
  }

  dimension: party_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.party_id ;;
  }

  dimension: phone_number_txt {
    type: string
    sql: ${TABLE}.phone_number_txt ;;
  }

  dimension: phone_subtype_cd {
    type: string
    sql: ${TABLE}.phone_subtype_cd ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      party.party_id,
      individual.family_name,
      individual.profession_name,
      individual.middle_name,
      individual.given_name,
      individual.individual_id
    ]
  }
}
