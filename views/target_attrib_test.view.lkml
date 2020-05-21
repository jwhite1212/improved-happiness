view: target_attrib_test {
  label: "Attribute Tests"
  sql_table_name: "CLARITY_DQ_SCORECARD"."VW_RPTS_TARGET_ATTRIB_TEST"
    ;;

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}."ACTIVE_IND" ;;
  }

  dimension: attrib_test_key {
    type: number
    sql: ${TABLE}."ATTRIB_TEST_KEY" ;;
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
    sql: ${TABLE}."CREATE_TS" ;;
  }

  dimension: dq_attrib_key {
    type: number
    value_format_name: id
    sql: ${TABLE}."DQ_ATTRIB_KEY" ;;
  }

  dimension: dq_generated_sql {
    label: "Generated SQL"
    type: string
    sql: ${TABLE}."DQ_GENERATED_SQL" ;;
  }

  dimension: dq_rule_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."DQ_RULE_ID" ;;
  }

  dimension: dq_test_note {
    type: string
    sql: ${TABLE}."DQ_TEST_NOTE" ;;
  }

  dimension_group: effective_end {
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
    sql: ${TABLE}."EFF_END_DTE" ;;
  }

  dimension_group: effective_start {
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
    sql: ${TABLE}."EFF_START_DTE" ;;
  }



  dimension_group: last_update {
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
    sql: ${TABLE}."LST_UPDT_TS" ;;
  }

  dimension: last_update_user_id {
    type: string
    sql: ${TABLE}."LST_UPDT_USR_ID" ;;
  }

  dimension: n_variable_value {
    label: "'N' Variable Value"
    type: number
    sql: ${TABLE}."N_VARIABLE_VALUE" ;;
  }

  dimension: sql_result_data_type {
    label: "SQL Result Data Type"
    type: string
    sql: ${TABLE}."SQL_RSLT_DATA_TYP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
