view: dq_attrib {
  label: "Attributes"
  sql_table_name: "CLARITY_DQ_SCORECARD"."VW_RPTS_DQ_ATTRIB"
    ;;

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}."ACTIVE_IND" ;;
  }

  dimension: attribute_data_type {
    type: string
    sql: ${TABLE}."ATTRIB_DATA_TYP" ;;
  }

  dimension: attribute {
    type: string
    group_label: "Database Objects"
    sql: ${TABLE}."ATTRIB_NM" ;;
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

  dimension: database {
    type: string
    group_label: "Database Objects"
    drill_fields: [schema, table, attribute]
    sql: ${TABLE}."DB_NM" ;;
  }

  dimension: dq_attrib_key {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."DQ_ATTRIB_KEY" ;;
  }

  dimension: dq_config_key {
    type: number
    sql: ${TABLE}."DQ_CONFIG_KEY" ;;
  }

  dimension: dq_select_ind {
    type: string
    sql: ${TABLE}."DQ_SELECT_IND" ;;
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

  dimension: schema {
    type: string
    group_label: "Database Objects"
    drill_fields: [table, attribute]
    sql: ${TABLE}."SCHEMA_NM" ;;
  }

  dimension: table {
    type: string
    group_label: "Database Objects"
    drill_fields: [attribute]
    sql: ${TABLE}."TABLE_NM" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
