view: dq_config {
  label: "Configuration"
  sql_table_name: "CLARITY_DQ_SCORECARD"."VW_RPTS_DQ_CONFIG"
    ;;

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}."ACTIVE_IND" ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}."CLIENT_NM" ;;
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

  dimension: dq_config_key {
    primary_key: yes
    type: number
    sql: ${TABLE}."DQ_CONFIG_KEY" ;;
  }

  dimension: database {
    type: string
    sql: ${TABLE}."DQ_DB_NM" ;;
  }

  dimension: schema {
    type: string
    sql: ${TABLE}."DQ_SCHEMA_NM" ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}."DQ_WHSE_NM" ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
