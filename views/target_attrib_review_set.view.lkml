view: target_attrib_review_set {
  sql_table_name: "CLARITY_DQ_SCORECARD"."VW_RPTS_TARGET_ATTRIB_REVIEW_SET"
    ;;

  dimension: attribute_test_key {
    primary_key: yes
    type: number
    sql: ${TABLE}."Attribute Test Key" ;;
  }

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

  dimension: dq_review_set_key {
    label: "DQ Review Set Key"
    type: number
    sql: ${TABLE}."DQ Review Set Key" ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
