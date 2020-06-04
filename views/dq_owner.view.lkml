view: dq_owner {
  sql_table_name: "CLARITY_DQ_SCORECARD"."VW_RPTS_DQ_OWNER"
    ;;

  dimension_group: created {
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
    sql: ${TABLE}."Created Timestamp" ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}."Last Updated Timestamp" ;;
  }

  dimension: last_updated_user_id {
    label: "Last Updated User ID"
    type: string
    sql: ${TABLE}."Last Updated User ID" ;;
  }

  dimension: owner_key {
    primary_key: yes
    type: number
    sql: ${TABLE}."Owner Key" ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}."Owner Name" ;;
  }

  measure: count {
    type: count
    drill_fields: [owner_name]
  }
}
