view: individual {
  sql_table_name: datahub_ODS.individual ;;

  dimension: individual_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.individual_id ;;
  }

  dimension: assoc_ind {
    type: string
    sql: ${TABLE}.assoc_ind ;;
  }

  dimension: birth_dt {
    type: string
    sql: ${TABLE}.birth_dt ;;
  }

  dimension: current_ind {
    type: string
    sql: ${TABLE}.current_ind ;;
  }

  dimension: family_name {
    type: string
    sql: ${TABLE}.family_name ;;
  }

  dimension: gender_type_cd {
    type: string
    sql: ${TABLE}.gender_type_cd ;;
  }

  dimension: given_name {
    type: string
    sql: ${TABLE}.given_name ;;
  }

  dimension: insert_load_id {
    type: number
    sql: ${TABLE}.insert_load_id ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: name_match_term {
    type: string
    sql: ${TABLE}.name_matchTerm ;;
  }

  dimension: name_prefix_txt {
    type: string
    sql: ${TABLE}.name_prefix_txt ;;
  }

  dimension: name_suffix_txt {
    type: string
    sql: ${TABLE}.name_suffix_txt ;;
  }

  dimension: party_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.party_id ;;
  }

  dimension: party_source_cd {
    type: string
    sql: ${TABLE}.party_source_cd ;;
  }

  dimension: profession_name {
    type: string
    sql: ${TABLE}.profession_name ;;
  }

  dimension: salutation_type_cd {
    type: string
    sql: ${TABLE}.salutation_type_cd ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: source_system_cd {
    type: string
    sql: ${TABLE}.source_system_cd ;;
  }

  dimension: update_load_id {
    type: number
    sql: ${TABLE}.update_load_id ;;
  }

  dimension_group: valid_from_dt {
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
    sql: ${TABLE}.valid_from_dt ;;
  }

  dimension_group: valid_until_dt {
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
    sql: ${TABLE}.valid_until_dt ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      individual_id,
      family_name,
      profession_name,
      middle_name,
      given_name,
      party.party_id,
      electronic_address.count,
      phone_numbers.count,
      street_address.count
    ]
  }
}
