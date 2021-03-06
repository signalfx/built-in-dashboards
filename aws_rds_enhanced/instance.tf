# signalfx_single_value_chart.sfx_aws_rds_enchanced_dash_0_0:
resource "signalfx_single_value_chart" "sfx_aws_rds_enchanced_dash_0_0" {
  color_by                = "Dimension"
  is_timestamp_hidden     = false
  max_precision           = 3
  name                    = "Total CPU Utilization"
  program_text            = "A = data('cpuUtilization.total').publish(label='A')"
  secondary_visualization = "None"
  show_spark_line         = false
  unit_prefix             = "Metric"

  viz_options {
    display_name = "cpuUtilization.total"
    label        = "A"
  }
}
# signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_1:
resource "signalfx_time_chart" "sfx_aws_rds_enchanced_dash_0_1" {
  axes_include_zero  = false
  axes_precision     = 0
  color_by           = "Metric"
  disable_sampling   = false
  minimum_resolution = 0
  name               = "% CPU Utilization by Use Category"
  plot_type          = "AreaChart"
  program_text       = <<-EOF
        A = data('cpuUtilization.guest').publish(label='A')
        B = data('cpuUtilization.idle').publish(label='B')
        C = data('cpuUtilization.irq').publish(label='C')
        D = data('cpuUtilization.nice').publish(label='D')
        E = data('cpuUtilization.steal').publish(label='E')
        F = data('cpuUtilization.system').publish(label='F')
        G = data('cpuUtilization.user').publish(label='G')
        H = data('cpuUtilization.wait').publish(label='H')
    EOF
  show_data_markers  = false
  show_event_lines   = false
  stacked            = true
  time_range         = 900
  unit_prefix        = "Metric"

  histogram_options {
    color_theme = "red"
  }

  viz_options {
    axis         = "left"
    display_name = "% idle"
    label        = "B"
  }
  viz_options {
    axis         = "left"
    display_name = "% in use by interrupts"
    label        = "C"
  }
  viz_options {
    axis         = "left"
    display_name = "% in use by kernel"
    label        = "F"
  }
  viz_options {
    axis         = "left"
    display_name = "% in use by other VMs"
    label        = "E"
  }
  viz_options {
    axis         = "left"
    display_name = "% in use by programs at lowest priority"
    label        = "D"
  }
  viz_options {
    axis         = "left"
    display_name = "% in use by user programs"
    label        = "G"
  }
  viz_options {
    axis         = "left"
    display_name = "% unused while waiting for I/O access"
    label        = "H"
  }
  viz_options {
    axis         = "left"
    display_name = "% used by guest programs"
    label        = "A"
  }
}
# signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_2:
resource "signalfx_time_chart" "sfx_aws_rds_enchanced_dash_0_2" {
  axes_include_zero  = false
  axes_precision     = 0
  color_by           = "Metric"
  disable_sampling   = false
  minimum_resolution = 0
  name               = "Task Status Breakdown"
  plot_type          = "AreaChart"
  program_text       = <<-EOF
        A = data('tasks.blocked').publish(label='A')
        B = data('tasks.running').publish(label='B')
        C = data('tasks.sleeping').publish(label='C')
        D = data('tasks.stopped').publish(label='D')
        F = data('tasks.zombie').publish(label='F')
    EOF
  show_data_markers  = false
  show_event_lines   = false
  stacked            = true
  time_range         = 900
  unit_prefix        = "Metric"

  axis_left {
    label     = "# Tasks"
    min_value = 0
  }

  histogram_options {
    color_theme = "red"
  }

  viz_options {
    axis         = "left"
    display_name = "tasks.blocked"
    label        = "A"
  }
  viz_options {
    axis         = "left"
    display_name = "tasks.running"
    label        = "B"
  }
  viz_options {
    axis         = "left"
    display_name = "tasks.sleeping"
    label        = "C"
  }
  viz_options {
    axis         = "left"
    display_name = "tasks.stopped"
    label        = "D"
  }
  viz_options {
    axis         = "left"
    display_name = "tasks.zombie"
    label        = "F"
  }
}
# signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_3:
resource "signalfx_time_chart" "sfx_aws_rds_enchanced_dash_0_3" {
  axes_include_zero  = false
  axes_precision     = 0
  color_by           = "Metric"
  disable_sampling   = false
  minimum_resolution = 0
  name               = "Read/WriteIOs/sec"
  plot_type          = "LineChart"
  program_text       = <<-EOF
        A = data('diskIO.writeIOsPS').publish(label='A')
        B = data('diskIO.readIOsPS').publish(label='B')
    EOF
  show_data_markers  = false
  show_event_lines   = false
  stacked            = false
  time_range         = 900
  unit_prefix        = "Metric"

  axis_left {
    label = "Read ops/sec - YELLOW"
  }

  axis_right {
    label = "Write ops/sec - BLUE"
  }

  histogram_options {
    color_theme = "red"
  }

  viz_options {
    axis         = "left"
    color        = "yellow"
    display_name = "diskIO.readIOsPS"
    label        = "B"
  }
  viz_options {
    axis         = "right"
    color        = "blue"
    display_name = "diskIO.writeIOsPS"
    label        = "A"
  }
}
# signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_4:
resource "signalfx_time_chart" "sfx_aws_rds_enchanced_dash_0_4" {
  axes_include_zero  = false
  axes_precision     = 0
  color_by           = "Metric"
  disable_sampling   = false
  minimum_resolution = 0
  name               = "Read/Write Throughput"
  plot_type          = "LineChart"
  program_text       = <<-EOF
        A = data('diskIO.readKbPS').publish(label='A')
        B = data('diskIO.writeKbPS').publish(label='B')
    EOF
  show_data_markers  = false
  show_event_lines   = false
  stacked            = false
  time_range         = 900
  unit_prefix        = "Metric"

  axis_left {
    label = "Read - kb/sec - ORANGE"
  }

  axis_right {
    label = "Write - kb/sec - GREEN"
  }

  histogram_options {
    color_theme = "red"
  }

  viz_options {
    axis         = "left"
    color        = "orange"
    display_name = "diskIO.readKbPS"
    label        = "A"
  }
  viz_options {
    axis         = "right"
    color        = "green"
    display_name = "diskIO.writeKbPS"
    label        = "B"
  }
}
# signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_5:
resource "signalfx_time_chart" "sfx_aws_rds_enchanced_dash_0_5" {
  axes_include_zero  = false
  axes_precision     = 0
  color_by           = "Dimension"
  disable_sampling   = false
  minimum_resolution = 0
  name               = "Average Latency (reads and writes)"
  plot_type          = "LineChart"
  program_text       = "A = data('diskIO.await').publish(label='A')"
  show_data_markers  = false
  show_event_lines   = false
  stacked            = false
  time_range         = 900
  unit_prefix        = "Metric"

  axis_left {
    label = "ms"
  }

  histogram_options {
    color_theme = "red"
  }

  viz_options {
    axis         = "left"
    display_name = "diskIO.await"
    label        = "A"
  }
}
# signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_6:
resource "signalfx_time_chart" "sfx_aws_rds_enchanced_dash_0_6" {
  axes_include_zero  = false
  axes_precision     = 0
  color_by           = "Dimension"
  disable_sampling   = false
  minimum_resolution = 0
  name               = "Average Queue Length"
  plot_type          = "LineChart"
  program_text       = "A = data('diskIO.avgQueueLen').publish(label='A')"
  show_data_markers  = false
  show_event_lines   = false
  stacked            = false
  time_range         = 900
  unit_prefix        = "Metric"

  axis_left {
    label = "Requests"
  }

  histogram_options {
    color_theme = "red"
  }

  viz_options {
    axis         = "left"
    color        = "emerald"
    display_name = "diskIO.avgQueueLen"
    label        = "A"
  }
}
# signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_7:
resource "signalfx_time_chart" "sfx_aws_rds_enchanced_dash_0_7" {
  axes_include_zero  = false
  axes_precision     = 0
  color_by           = "Metric"
  disable_sampling   = false
  minimum_resolution = 0
  name               = "Network IO"
  plot_type          = "LineChart"
  program_text       = <<-EOF
        A = data('network.tx').publish(label='A')
        B = data('network.rx').publish(label='B')
    EOF
  show_data_markers  = false
  show_event_lines   = false
  stacked            = false
  time_range         = 900
  unit_prefix        = "Metric"

  axis_left {
    label = "Read - bytes/sec - RED"
  }

  axis_right {
    label = "Write - bytes/sec - GREEN"
  }

  histogram_options {
    color_theme = "red"
  }

  viz_options {
    axis         = "left"
    display_name = "network.rx"
    label        = "B"
  }
  viz_options {
    axis         = "right"
    display_name = "network.tx"
    label        = "A"
  }
}
# signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_8:
resource "signalfx_time_chart" "sfx_aws_rds_enchanced_dash_0_8" {
  axes_include_zero  = false
  axes_precision     = 0
  color_by           = "Metric"
  disable_sampling   = false
  minimum_resolution = 0
  name               = "Memory Usage"
  plot_type          = "AreaChart"
  program_text       = <<-EOF
        A = data('memory.free').scale(0.001).publish(label='A')
        B = data('memory.active').scale(0.001).publish(label='B')
        C = data('memory.buffers').scale(0.001).publish(label='C')
        D = data('memory.inactive').scale(0.001).publish(label='D')
        E = data('memory.mapped').scale(0.001).publish(label='E')
    EOF
  show_data_markers  = false
  show_event_lines   = false
  stacked            = true
  time_range         = 900
  unit_prefix        = "Metric"

  axis_left {
    label     = "MB"
    min_value = 0
  }

  histogram_options {
    color_theme = "red"
  }

  viz_options {
    axis         = "left"
    display_name = "memory.active - Scale:0.001"
    label        = "B"
  }
  viz_options {
    axis         = "left"
    display_name = "memory.buffers - Scale:0.001"
    label        = "C"
  }
  viz_options {
    axis         = "left"
    display_name = "memory.free - Scale:0.001"
    label        = "A"
  }
  viz_options {
    axis         = "left"
    display_name = "memory.inactive - Scale:0.001"
    label        = "D"
  }
  viz_options {
    axis         = "left"
    display_name = "memory.mapped - Scale:0.001"
    label        = "E"
  }
}
# signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_9:
resource "signalfx_time_chart" "sfx_aws_rds_enchanced_dash_0_9" {
  axes_include_zero  = false
  axes_precision     = 0
  color_by           = "Metric"
  disable_sampling   = false
  minimum_resolution = 0
  name               = "Storage Usage"
  plot_type          = "AreaChart"
  program_text       = <<-EOF
        A = data('fileSys.total').publish(label='A', enable=False)
        B = data('fileSys.used').publish(label='B')
        C = (A-B).publish(label='C')
    EOF
  show_data_markers  = false
  show_event_lines   = false
  stacked            = true
  time_range         = 900
  unit_prefix        = "Metric"

  axis_left {
    label     = "kb"
    min_value = 0
  }

  histogram_options {
    color_theme = "red"
  }

  viz_options {
    axis         = "left"
    display_name = "fileSys.total"
    label        = "A"
  }
  viz_options {
    axis         = "left"
    display_name = "free storage"
    label        = "C"
  }
  viz_options {
    axis         = "left"
    display_name = "used storage"
    label        = "B"
  }
}
# signalfx_dashboard.sfx_aws_rds_enchanced_dash_0:
resource "signalfx_dashboard" "sfx_aws_rds_enchanced_dash_0" {
  charts_resolution       = "default"
  dashboard_group         = signalfx_dashboard_group.sfx_aws_rds_enchanced.id
  discovery_options_query = "_exists_:instanceResourceID AND _exists_:AWSUniqueId AND _exists_:EngineName AND Namespace:\"AWS/RDS\""
  discovery_options_selectors = [
    "Namespace:AWS/RDS",
    "_exists_:AWSUniqueId",
    "_exists_:EngineName",
    "_exists_:Namespace",
    "_exists_:instanceResourceID",
    "sf_key:AWSUniqueId",
    "sf_key:EngineName",
    "sf_key:instanceResourceID",
  ]
  name = "Enhanced RDS Instance"

  chart {
    chart_id = signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_1.id
    column   = 4
    height   = 1
    row      = 0
    width    = 4
  }
  chart {
    chart_id = signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_7.id
    column   = 8
    height   = 1
    row      = 2
    width    = 4
  }
  chart {
    chart_id = signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_6.id
    column   = 4
    height   = 1
    row      = 2
    width    = 4
  }
  chart {
    chart_id = signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_9.id
    column   = 6
    height   = 1
    row      = 3
    width    = 6
  }
  chart {
    chart_id = signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_8.id
    column   = 0
    height   = 1
    row      = 3
    width    = 6
  }
  chart {
    chart_id = signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_5.id
    column   = 0
    height   = 1
    row      = 2
    width    = 4
  }
  chart {
    chart_id = signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_2.id
    column   = 8
    height   = 1
    row      = 0
    width    = 4
  }
  chart {
    chart_id = signalfx_single_value_chart.sfx_aws_rds_enchanced_dash_0_0.id
    column   = 0
    height   = 1
    row      = 0
    width    = 4
  }
  chart {
    chart_id = signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_3.id
    column   = 0
    height   = 1
    row      = 1
    width    = 6
  }
  chart {
    chart_id = signalfx_time_chart.sfx_aws_rds_enchanced_dash_0_4.id
    column   = 6
    height   = 1
    row      = 1
    width    = 6
  }

  variable {
    alias                  = "instance"
    apply_if_exist         = false
    description            = "Designate which RDS instance is in focus"
    property               = "AWSUniqueId"
    replace_only           = false
    restricted_suggestions = false
    value_required         = false
    values                 = []
    values_suggested       = []
  }
}
