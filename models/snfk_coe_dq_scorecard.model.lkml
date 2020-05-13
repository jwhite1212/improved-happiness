connection: "snfk_coe_dq_scorecard"

# include all the views
include: "/views/**/*.view"

datagroup: snfk_coe_dq_scorecard_datagroup {
  sql_trigger: SELECT MAX(JOB_RUN_START_TS) FROM JOB_RUN_HIST ;;
  max_cache_age: "1 hour"
}

persist_with: snfk_coe_dq_scorecard_datagroup


explore: target_attrib_result {
  persist_with: snfk_coe_dq_scorecard_datagroup
  label: "1) Data Quality Test Results"
  sql_always_where: ${target_attrib_test.active_ind} = 'Yes' ;;

  join: target_attrib_test {
    type: inner
    sql_on: ${target_attrib_result.attrib_test_key} = ${target_attrib_test.attrib_test_key} ;;
    relationship: many_to_one
  }

  join: job_run_hist {
    type: inner
    sql_on: ${target_attrib_result.job_run_id} = ${job_run_hist.id} ;;
    relationship: many_to_one
  }

  join: dq_attrib {
    type: inner
    sql_on: ${target_attrib_test.dq_attrib_key} = ${dq_attrib.dq_attrib_key} ;;
    relationship: many_to_one
  }

  join: dq_config {
    type: inner
    sql_on: ${dq_attrib.dq_config_key} = ${dq_config.dq_config_key} ;;
    relationship: many_to_one
  }

  join: dq_rule {
    type: inner
    sql_on: ${target_attrib_test.dq_rule_id} = ${dq_rule.dq_rule_id} ;;
    relationship: many_to_one
  }

  join: dim_date {
    type: inner
    sql_on: ${job_run_hist.job_start_date} = ${dim_date.full_date} ;;
    relationship: many_to_one
  }
}



  explore: target_attrib_error_log {
    persist_with: snfk_coe_dq_scorecard_datagroup
    label: "2) Error Log"
    sql_always_where: ${target_attrib_test.active_ind} = 'Yes' ;;

    join: target_attrib_test {
      type: inner
      sql_on: ${target_attrib_error_log.attrib_test_key} = ${target_attrib_test.attrib_test_key} ;;
      relationship: many_to_one
    }

    join: job_run_hist {
      type: inner
      sql_on: ${target_attrib_error_log.job_run_id} = ${job_run_hist.id} ;;
      relationship: many_to_one
    }

    join: dq_attrib {
      type: inner
      sql_on: ${target_attrib_test.dq_attrib_key} = ${dq_attrib.dq_attrib_key} ;;
      relationship: many_to_one
    }

    join: dq_config {
      type: inner
      sql_on: ${dq_attrib.dq_config_key} = ${dq_config.dq_config_key} ;;
      relationship: many_to_one
    }

    join: dq_rule {
      type: inner
      sql_on: ${target_attrib_test.dq_rule_id} = ${dq_rule.dq_rule_id} ;;
      relationship: many_to_one
    }

    join: dim_date {
      type: inner
      sql_on: ${job_run_hist.job_start_date} = ${dim_date.full_date} ;;
      relationship: many_to_one
    }

}


explore: dq_attrib {
  label: "Attributes"
}


explore: dq_rule {
  label: "Data Quality Rules"
}

explore: job_run_hist {
  persist_with: snfk_coe_dq_scorecard_datagroup
  label: "Job Run History"

  join: dim_date {
    type: inner
    sql_on: ${job_run_hist.job_start_date} = ${dim_date.full_date} ;;
    relationship: many_to_one
    }
}
