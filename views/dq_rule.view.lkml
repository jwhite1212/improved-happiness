view: dq_rule {
  label: "Rules"
  sql_table_name: "CLARITY_DQ_SCORECARD"."VW_RPTS_DQ_RULE"
    ;;
  drill_fields: []

  dimension: dq_rule_id {
    label: "DQ Rule ID"
    primary_key: yes
    type: number
    sql: ${TABLE}."DQ_RULE_ID" ;;
  }

  dimension: active_ind {
    label: "Rule Active?"
    type: yesno
    sql: ${TABLE}."ACTIVE_IND" ;;
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

  dimension: dq_rule_cat {
    label: "Rule Category"
    type: string
    sql: ${TABLE}."DQ_RULE_CAT" ;;
  }

  dimension: dq_rule_sql {
    label: "SQL Executed"
    type: string
    sql: ${TABLE}."DQ_RULE_SQL" ;;
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
    sql: ${TABLE}."LST_UPDT_TS" ;;
  }

  dimension: last_update_user_id {
    type: string
    sql: ${TABLE}."LST_UPDT_USR_ID" ;;
  }

  dimension: rule_long_desc {
    label: "Rule Description"
    type: string
    sql: ${TABLE}."RULE_LONG_DESC" ;;
  }

  dimension: rule_flag {
    label: "DQ Score Eligible?"
    description: "Indicates whether or not the rule is a rule that a data quality score can be calculated with."
    type: yesno
    sql: ${TABLE}."RULE_PCT_IND" ;;
    html:
      {% if value == 'Yes' %}
      <p style="color: black; background-color: #73BDA2; font-size:100%; text-align:center">{{ rendered_value }}</p>
      {% else %}
      <p style="color: black; background-color: #E5B58C; font-size:100%; text-align:center">{{ rendered_value }}</p>
      {% endif %}
      ;;
  }


  dimension: rule_short_desc {
    label: "Rule"
    type: string
    sql: ${TABLE}."RULE_SHORT_DESC" ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
