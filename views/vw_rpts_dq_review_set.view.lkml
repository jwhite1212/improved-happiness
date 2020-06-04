view: dq_review_set {
  sql_table_name: "CLARITY_DQ_SCORECARD"."VW_RPTS_DQ_REVIEW_SET"
    ;;

  dimension_group: created_timestamp {
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

  dimension_group: last_updated_timestamp {
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
    type: string
    sql: ${TABLE}."Last Updated User ID" ;;
  }

  dimension: review_set_key {
    type: number
    sql: ${TABLE}."Review Set Key" ;;
  }

  dimension: review_set_name {
    type: string
    sql: ${TABLE}."Review Set Name" ;;
  }

  measure: count {
    type: count
    drill_fields: [review_set_name]
  }
}
