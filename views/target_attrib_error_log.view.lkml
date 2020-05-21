view: target_attrib_error_log {
  label: "Attribute Error Log"
  sql_table_name: "CLARITY_DQ_SCORECARD"."VW_RPTS_TARGET_ATTRIB_ERROR_LOG"
    ;;

  dimension: attrib_test_key {
    type: number
    sql: ${TABLE}."ATTRIB_TEST_KEY" ;;
  }

  dimension: dq_execute_sql {
    label: "SQL Executed"
    type: string
    sql: ${TABLE}."DQ_EXECUTE_SQL" ;;
  }


  dimension: error_text {
    type: string
    sql: ${TABLE}."ERROR_TXT" ;;
  }

  dimension: job_run_id {
    type: number
    sql: ${TABLE}."JOB_RUN_ID" ;;
  }


  dimension: target_attrib_error_key {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."TARGET_ATTRIB_ERROR_KEY" ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}."TEST_RUN_DTE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
