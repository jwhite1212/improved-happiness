view: target_attrib_result {
  label: "Attribute Results"
  sql_table_name: "CLARITY_DQ_SCORECARD"."TARGET_ATTRIB_RESULT"
    ;;

  dimension: attrib_test_key {
    type: number
    sql: ${TABLE}."ATTRIB_TEST_KEY" ;;
  }

  dimension: clarity_image {
    type: string
    sql: ' ';;
    html: <img src="https://media-exp1.licdn.com/dms/image/C560BAQFrFTYVPNQBwA/company-logo_200_200/0?e=1594252800&v=beta&t=x3hIDdfIe9ctogTcTbEmAWqOejWPwwW6CfwQAqz9KmQ" width= 70 height = auto />
      ;;
  }

  dimension: dq_execute_sql {
    label: "SQL Executed"
    type: string
    sql: ${TABLE}."DQ_EXECUTE_SQL" ;;
  }


  dimension: job_test_key_seq {
    primary_key: yes
    type: number
    value_format_name: id
    sql: CONCAT(${job_run_id}, ${attrib_test_key}) ;;
  }

  dimension: job_run_id {
    type: number
    sql: ${TABLE}."JOB_RUN_ID" ;;
  }


  dimension: table_row_count {
    type: number
    sql: ${TABLE}."TABLE_ROW_CNT" ;;
  }

  dimension: test_result_number {
    type: number
    sql: ${TABLE}."TEST_RSLT_NUM" ;;
  }

  dimension: test_result_text {
    type: string
    sql: ${TABLE}."TEST_RSLT_TXT" ;;
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


 measure: data_quality_score {
   type: number
   value_format_name: percent_2
  sql: (${total_row_count} - ${total_result_rows}) / nullif(${total_row_count},0) ;;
 }



  measure: total_attributes_checked {
    type: count_distinct
    sql: ${attrib_test_key} ;;
  }

  measure: total_dq_test_results {
    label: "Total DQ Test Results"
    type: count_distinct
    sql: ${job_test_key_seq} ;;
  }

  measure: total_result_rows {
    type: sum
    filters: [dq_rule.rule_flag: "Yes"]
    sql: ${test_result_number} ;;
  }

  measure: total_row_count {
    type: sum
    filters: [dq_rule.rule_flag: "Yes"]
    sql: ${table_row_count} ;;
  }

  measure: vs_goal {
    type: number
    value_format_name: percent_2
    sql: ${data_quality_score} - 1;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
