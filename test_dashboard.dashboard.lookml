- dashboard: data_quality_scorecard
  title: Data Quality Scorecard
  layout: newspaper
  elements:
  - title: Data Quality Score KPI
    name: Data Quality Score KPI
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: single_value
    fields: [target_attrib_result.data_quality_score]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Data Quality Score
    conditional_formatting: [{type: equal to, value: 1, background_color: '', font_color: "#008755",
        color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938, palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 1, background_color: '', font_color: "#D37A22", color_application: {
          collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938, palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The total number of rows - the total result rows / the total number
      of rows. This score is only calculated if the rule is eligible to calculate
      a data quality score.
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 0
    col: 0
    width: 4
    height: 2
  - title: Clarity Insights Logo
    name: Clarity Insights Logo
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: single_value
    fields: [target_attrib_result.clarity_image]
    sorts: [target_attrib_result.clarity_image]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 21
    width: 3
    height: 2
  - title: Total DQ Test Results KPI
    name: Total DQ Test Results KPI
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: single_value
    fields: [target_attrib_result.total_dq_test_results]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: DQ Test Results
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The total number of successful data quality tests ran to check various
      table attributes based on data quality rules.
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 0
    col: 4
    width: 4
    height: 2
  - title: Total Attributes Checked KPI
    name: Total Attributes Checked KPI
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: single_value
    fields: [target_attrib_result.total_attributes_checked]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Attributes Checked
    defaults_version: 1
    note_state: expanded
    note_display: hover
    note_text: The distinct count of all attributes checked.
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 0
    col: 8
    width: 4
    height: 2
  - title: Total Error Count KPI
    name: Total Error Count KPI
    model: snfk_coe_dq_scorecard
    explore: target_attrib_error_log
    type: single_value
    fields: [target_attrib_error_log.count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#D37A22"
    single_value_title: Error Count
    defaults_version: 1
    note_state: expanded
    note_display: hover
    note_text: The total number of errors when data quality tests were conducted.
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 0
    col: 12
    width: 4
    height: 2
  - title: Data Quality Score Trend
    name: Data Quality Score Trend
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: looker_line
    fields: [dim_date.full_date, target_attrib_result.data_quality_score]
    fill_fields: [dim_date.full_date]
    sorts: [dim_date.full_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938
      palette_id: cd8eda3d-d7e3-4eb1-9d53-e137023be1fb
      options:
        steps: 5
    y_axes: [{label: DQ Score, orientation: left, series: [{axisId: target_attrib_result.data_quality_score,
            id: target_attrib_result.data_quality_score, name: Data Quality Score}],
        showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_colors:
      target_attrib_result.data_quality_score: "#003C71"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#003C71", label: ''}]
    defaults_version: 1
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 6
    col: 0
    width: 6
    height: 5
  - title: Total DQ Test Results Trend
    name: Total DQ Test Results Trend
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: looker_line
    fields: [dim_date.full_date, target_attrib_result.total_dq_test_results]
    fill_fields: [dim_date.full_date]
    sorts: [dim_date.full_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: DQ Test Results, orientation: left, series: [{axisId: target_attrib_result.total_dq_test_results,
            id: target_attrib_result.total_dq_test_results, name: Total DQ Test Results}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_colors:
      target_attrib_result.total_dq_test_results: "#003C71"
    defaults_version: 1
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 6
    col: 6
    width: 6
    height: 5
  - title: Error Count Trend
    name: Error Count Trend
    model: snfk_coe_dq_scorecard
    explore: target_attrib_error_log
    type: looker_column
    fields: [target_attrib_error_log.count, dim_date.full_date]
    fill_fields: [dim_date.full_date]
    sorts: [dim_date.full_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Error Count, orientation: left, series: [{axisId: target_attrib_error_log.count,
            id: target_attrib_error_log.count, name: Target Attrib Error Log}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      target_attrib_error_log.count: "#D37A22"
    column_spacing_ratio: 0.1
    column_group_spacing_ratio: 0.2
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 6
    col: 12
    width: 6
    height: 5
  - title: Job Status Breakdown
    name: Job Status Breakdown
    model: snfk_coe_dq_scorecard
    explore: job_run_hist
    type: looker_donut_multiples
    fields: [job_run_hist.count, job_run_hist.job_status]
    pivots: [job_run_hist.job_status]
    filters: {}
    sorts: [job_run_hist.count desc 0, job_run_hist.job_status]
    limit: 500
    query_timezone: America/Los_Angeles
    show_value_labels: false
    font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      job_run_hist.count: "#003C71"
      FAILED - job_run_hist.count: "#D37A22"
      STARTED - job_run_hist.count: "#265987"
      SUCCESS - job_run_hist.count: "#008755"
    defaults_version: 1
    listen:
      Date: dim_date.full_date
    row: 6
    col: 18
    width: 6
    height: 5
  - title: Data Quality Score Table
    name: Data Quality Score Table
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: looker_grid
    fields: [dq_attrib.database, target_attrib_result.data_quality_score, dq_attrib.schema,
      dq_attrib.table, dq_attrib.attribute, dim_date.full_date]
    pivots: [dim_date.full_date]
    fill_fields: [dim_date.full_date]
    sorts: [target_attrib_result.data_quality_score 0, dim_date.full_date]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      dim_date.full_date: Date
      target_attrib_result.data_quality_score: DQ Score
    series_column_widths:
      dq_attrib.database: 179
    series_cell_visualizations:
      target_attrib_result.data_quality_score:
        is_active: false
    conditional_formatting: [{type: equal to, value: 1, background_color: "#73BDA2",
        font_color: !!null '', color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938,
          palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55, options: {steps: 5, constraints: {
              max: {type: number, value: 1}}}}, bold: false, italic: false, strikethrough: false,
        fields: [target_attrib_result.data_quality_score]}, {type: less than, value: 1,
        background_color: "#E5B58C", font_color: !!null '', color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938,
          palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55}, bold: true, italic: false,
        strikethrough: false, fields: [target_attrib_result.data_quality_score]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 11
    col: 0
    width: 24
    height: 8
  - name: ''
    type: text
    body_text: |-
      <div class="text" >
      <font color="#000000" size="4">
      <strong><center>Data Quality Scorecard</center></strong>
      </font>
      </div>

      <font size="2">
      <small><center>Clarity DQ Team
      </small></center>
      </font>
    row: 0
    col: 16
    width: 5
    height: 2
  - title: DQ Test Result Details
    name: DQ Test Result Details
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: table
    fields: [target_attrib_result.run_time, dq_attrib.database, dq_attrib.schema,
      dq_attrib.table, dq_attrib.attribute, target_attrib_result.dq_execute_sql, dq_rule.rule_short_desc,
      dq_rule.rule_flag, target_attrib_result.table_row_count, target_attrib_result.test_result_number,
      target_attrib_result.test_result_text]
    sorts: [target_attrib_result.run_time desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    transpose: false
    truncate_text: false
    size_to_fit: true
    series_column_widths:
      dq_rule.rule_short_desc: 132
      target_attrib_result.run_time: 140
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#672146",
        font_color: !!null '', color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938,
          palette_id: 753048da-4802-4ecf-9022-b1b4282df36b, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 19
    col: 0
    width: 24
    height: 8
  - title: Error Log
    name: Error Log
    model: snfk_coe_dq_scorecard
    explore: target_attrib_error_log
    type: table
    fields: [target_attrib_error_log.job_run_id, target_attrib_error_log.run_time,
      dq_attrib.database, dq_attrib.schema, dq_attrib.table, target_attrib_error_log.error_text,
      target_attrib_error_log.dq_execute_sql]
    sorts: [target_attrib_error_log.run_time desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: dim_date.full_date
      Database: dq_attrib.database
      Schema: dq_attrib.schema
      Table: dq_attrib.table
      Rule Category: dq_rule.dq_rule_cat
    row: 34
    col: 0
    width: 24
    height: 8
  - title: Job Run History
    name: Job Run History
    model: snfk_coe_dq_scorecard
    explore: job_run_hist
    type: looker_grid
    fields: [job_run_hist.id, job_run_hist.warehouse, job_run_hist.warehouse_size,
      job_run_hist.job_status, job_run_hist.job_start_time, job_run_hist.job_end_time,
      job_run_hist.seconds_run_time]
    sorts: [job_run_hist.job_start_time desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      job_run_hist.seconds_run_time: Run Duration (s)
    series_cell_visualizations:
      job_run_hist.seconds_run_time:
        is_active: true
    defaults_version: 1
    listen:
      Date: dim_date.full_date
    row: 42
    col: 0
    width: 24
    height: 8
  - name: Data Quality Rules Index
    title: Data Quality Rules Index
    model: snfk_coe_dq_scorecard
    explore: dq_rule
    type: table
    fields: [dq_rule.dq_rule_id, dq_rule.dq_rule_cat, dq_rule.rule_short_desc, dq_rule.rule_long_desc,
      dq_rule.dq_rule_sql, dq_rule.rule_flag, dq_rule.active_ind, dq_rule.last_update_user_id,
      dq_rule.last_updated_time, dq_rule.created_time]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    transpose: false
    truncate_text: false
    size_to_fit: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    series_types: {}
    listen:
      Rule Category: dq_rule.dq_rule_cat
    row: 27
    col: 0
    width: 24
    height: 7
  - name: DQ Rule Completeness vs Target KPI
    title: DQ Rule Completeness vs Target KPI
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: single_value
    fields: [target_attrib_result.data_quality_score, target_attrib_result.vs_goal]
    filters:
      dq_rule.dq_rule_cat: completeness
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Completeness
    comparison_label: vs Target
    conditional_formatting: [{type: equal to, value: 1, background_color: "#9ACFBB",
        font_color: black, color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938,
          palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 1, background_color: "#ECCAAB",
        font_color: '', color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938,
          palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: The degree to which data elements are populated, whether required or
      not.
    listen: {}
    row: 2
    col: 4
    width: 4
    height: 4
  - title: DQ Rule Conformity vs Target KPI
    name: DQ Rule Conformity vs Target KPI
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: single_value
    fields: [target_attrib_result.data_quality_score, target_attrib_result.vs_goal]
    filters:
      dq_rule.dq_rule_cat: conformity
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Conformity
    comparison_label: vs Target
    conditional_formatting: [{type: equal to, value: 1, background_color: "#9ACFBB",
        font_color: black, color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938,
          palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 1, background_color: "#ECCAAB",
        font_color: '', color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938,
          palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: The degree of variability or contradiction of data element values.
    listen: {}
    row: 2
    col: 8
    width: 4
    height: 4
  - title: DQ Rule Integrity vs Target KPI
    name: DQ Rule Integrity vs Target KPI
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    type: single_value
    fields: [target_attrib_result.data_quality_score, target_attrib_result.vs_goal]
    filters:
      dq_rule.dq_rule_cat: uniqueness
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Integrity
    comparison_label: vs Target
    conditional_formatting: [{type: equal to, value: 1, background_color: "#9ACFBB",
        font_color: black, color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938,
          palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 1, background_color: "#ECCAAB",
        font_color: '', color_application: {collection_id: d3c7491d-fa17-435f-b864-6f084d9f5938,
          palette_id: 4632b496-fdb8-46e4-bc49-0cb48e85fe55}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: The degree of relational integrity of data elements as compared to
      other attributes
    listen: {}
    row: 2
    col: 16
    width: 4
    height: 4
  - name: Consistency
    type: text
    title_text: Consistency
    row: 2
    col: 12
    width: 4
    height: 4
  - name: Timeliness
    type: text
    title_text: Timeliness
    row: 2
    col: 20
    width: 4
    height: 4
  - name: Accuracy
    type: text
    title_text: Accuracy
    row: 2
    col: 0
    width: 4
    height: 4
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    listens_to_filters: []
    field: dim_date.full_date
  - name: Database
    title: Database
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    listens_to_filters: []
    field: dq_attrib.database
  - name: Schema
    title: Schema
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    listens_to_filters: []
    field: dq_attrib.schema
  - name: Table
    title: Table
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    listens_to_filters: []
    field: dq_attrib.table
  - name: Rule Category
    title: Rule Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: snfk_coe_dq_scorecard
    explore: target_attrib_result
    listens_to_filters: []
    field: dq_rule.dq_rule_cat
