view: dim_date {
  label: "Calendar"
  sql_table_name: "CLARITY_DQ_SCORECARD"."VW_RPTS_DIM_DATE"
    ;;

  dimension: date_key {
    primary_key: yes
    type: number
    sql: ${TABLE}."DATE_KEY" ;;
  }

  dimension: dateflag_cd {
    type: number
    sql: ${TABLE}."DATEFLAG_CD" ;;
  }

  dimension: dateflag_cm {
    type: number
    sql: ${TABLE}."DATEFLAG_CM" ;;
  }

  dimension: dateflag_cq {
    type: number
    sql: ${TABLE}."DATEFLAG_CQ" ;;
  }

  dimension: dateflag_cw {
    type: number
    sql: ${TABLE}."DATEFLAG_CW" ;;
  }

  dimension: dateflag_cy {
    type: number
    sql: ${TABLE}."DATEFLAG_CY" ;;
  }

  dimension: dateflag_pm {
    type: number
    sql: ${TABLE}."DATEFLAG_PM" ;;
  }

  dimension: dateflag_pq {
    type: number
    sql: ${TABLE}."DATEFLAG_PQ" ;;
  }

  dimension: dateflag_pw {
    type: number
    sql: ${TABLE}."DATEFLAG_PW" ;;
  }

  dimension: dateflag_py {
    type: number
    sql: ${TABLE}."DATEFLAG_PY" ;;
  }

  dimension: dateflag_r12_m {
    type: number
    sql: ${TABLE}."DATEFLAG_R12M" ;;
  }

  dimension: dateflag_r3_m {
    type: number
    sql: ${TABLE}."DATEFLAG_R3M" ;;
  }

  dimension: dateflag_r6_m {
    type: number
    sql: ${TABLE}."DATEFLAG_R6M" ;;
  }

  dimension: day_of_month {
    type: number
    sql: ${TABLE}."DAY_OF_MONTH" ;;
  }

  dimension: day_of_quarter {
    type: number
    sql: ${TABLE}."DAY_OF_QUARTER" ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}."DAY_OF_WEEK" ;;
  }

  dimension: day_of_week_name {
    type: string
    sql: ${TABLE}."DAY_OF_WEEK_NAME" ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}."DAY_OF_YEAR" ;;
  }

  dimension_group: full {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FULL_DATE" ;;
  }

  dimension: is_holiday {
    type: number
    sql: ${TABLE}."IS_HOLIDAY" ;;
  }

  dimension: is_weekend {
    type: number
    sql: ${TABLE}."IS_WEEKEND" ;;
  }

  dimension: is_workday_actual {
    type: number
    sql: ${TABLE}."IS_WORKDAY_ACTUAL" ;;
  }

  dimension: is_workday_normalized {
    type: number
    sql: ${TABLE}."IS_WORKDAY_NORMALIZED" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: month_of_quarter {
    type: number
    sql: ${TABLE}."MONTH_OF_QUARTER" ;;
  }

  dimension: month_of_year {
    type: number
    sql: ${TABLE}."MONTH_OF_YEAR" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."QUARTER" ;;
  }

  dimension: running_day_of_year {
    type: number
    sql: ${TABLE}."RUNNING_DAY_OF_YEAR" ;;
  }

  dimension_group: week_ending {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."WEEK_ENDING" ;;
  }

  dimension: week_of_year {
    type: number
    sql: ${TABLE}."WEEK_OF_YEAR" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: [day_of_week_name]
  }
}
