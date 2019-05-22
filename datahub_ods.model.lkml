connection: "datahub_ods"

# include all the views
include: "*.view"

datagroup: datahub_ods_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: datahub_ods_default_datagroup

explore: electronic_address {
  join: party {
    type: left_outer
    sql_on: ${electronic_address.party_id} = ${party.party_id} ;;
    relationship: many_to_one
  }

  join: individual {
    type: left_outer
    sql_on: ${electronic_address.individual_id} = ${individual.individual_id} ;;
    relationship: many_to_one
  }
}

explore: individual {
  join: party {
    type: left_outer
    sql_on: ${individual.party_id} = ${party.party_id} ;;
    relationship: many_to_one
  }
}

explore: party {}

explore: phone_numbers {
  join: party {
    type: left_outer
    sql_on: ${phone_numbers.party_id} = ${party.party_id} ;;
    relationship: many_to_one
  }

  join: individual {
    type: left_outer
    sql_on: ${phone_numbers.individual_id} = ${individual.individual_id} ;;
    relationship: many_to_one
  }
}

explore: street_address {
  join: individual {
    type: left_outer
    sql_on: ${street_address.individual_id} = ${individual.individual_id} ;;
    relationship: many_to_one
  }

  join: party {
    type: left_outer
    sql_on: ${street_address.party_id} = ${party.party_id} ;;
    relationship: many_to_one
  }
}
