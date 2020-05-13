view: job_run_hist {
  label: "Job Run History"
  sql_table_name: "CLARITY_DQ_SCORECARD"."JOB_RUN_HIST"
    ;;

  dimension: id {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."JOB_RUN_ID" ;;
  }


  dimension_group: job_end {
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
    sql: ${TABLE}."JOB_RUN_END_TS" ;;
  }

  dimension_group: job_start {
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
    sql: ${TABLE}."JOB_RUN_START_TS" ;;
  }

  dimension: job_status {
    type: string
    sql: ${TABLE}."JOB_RUN_STATUS" ;;
    html:
    {% if value == 'SUCCESS' %}
    <p style="color: black; background-color: #73BDA2; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'FAILED' %}
    <p style="color: black; background-color: #E5B58C; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'STARTED' %}
    <p style="color: black; background-color: whitesmoke; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %}
    ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}."WHSE_NM" ;;
  }

  dimension: warehouse_size {
    type: string
    sql: ${TABLE}."WHSE_SIZE_DESC" ;;
  }

  dimension_group: run_time {
  type: duration
  intervals: [second, minute, hour]
  sql_start: ${job_start_raw} ;;
  sql_end: ${job_end_raw} ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
