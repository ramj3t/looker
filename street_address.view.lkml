view: street_address {
  sql_table_name: datahub_ODS.street_address ;;

  dimension: addr_line_1_txt {
    type: string
    sql: ${TABLE}.addr_line_1_txt ;;
  }

  dimension: address_validation_flag {
    type: string
    sql: ${TABLE}.address_validation_flag ;;
  }

  dimension: building_name {
    type: string
    sql: ${TABLE}.building_name ;;
  }

  dimension: city_locator_id {
    type: string
    sql: ${TABLE}.city_locator_id ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: country_locator_id {
    type: string
    sql: ${TABLE}.country_locator_id ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: county_locator_id {
    type: string
    sql: ${TABLE}.county_locator_id ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: district_locator_id {
    type: string
    sql: ${TABLE}.district_locator_id ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  dimension: floor_num {
    type: string
    sql: ${TABLE}.floor_num ;;
  }

  dimension: house_num {
    type: string
    sql: ${TABLE}.house_num ;;
  }

  dimension: house_num_modifier_val {
    type: string
    sql: ${TABLE}.house_num_modifier_val ;;
  }

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

  dimension: original_addr_line_1_txt {
    type: string
    sql: ${TABLE}.original_addr_line_1_txt ;;
  }

  dimension: party_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.party_id ;;
  }

  dimension: postal_code_locator_id {
    type: string
    sql: ${TABLE}.postal_code_locator_id ;;
  }

  dimension: postal_code_num {
    type: string
    sql: ${TABLE}.postal_code_num ;;
  }

  dimension: source_system_cd {
    type: string
    sql: ${TABLE}.source_system_cd ;;
  }

  dimension: street_name {
    type: string
    sql: ${TABLE}.street_name ;;
  }

  dimension: territory_locator_id {
    type: string
    sql: ${TABLE}.territory_locator_id ;;
  }

  dimension: territory_name {
    type: string
    sql: ${TABLE}.territory_name ;;
  }

  dimension: unit_num {
    type: string
    sql: ${TABLE}.unit_num ;;
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
      street_name,
      building_name,
      district_name,
      city_name,
      county_name,
      territory_name,
      country_name,
      individual.family_name,
      individual.profession_name,
      individual.middle_name,
      individual.given_name,
      individual.individual_id,
      party.party_id
    ]
  }
}
