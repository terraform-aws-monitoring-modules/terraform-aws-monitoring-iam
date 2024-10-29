resource "aws_cloudwatch_log_metric_filter" "metric_filter" {
  log_group_name = var.cw_log_group_name
  name           = "iam-metric-filter"
  pattern        = "{ ($.eventSource = iam.amazonaws.com) && ($.eventName = \"${join("\" || $.eventName = \"", var.iam_event_names)}\") }"

  metric_transformation {
    name      = "iam-metric-filter"
    namespace = var.cw_metric_filter_namespace
    value     = var.cw_metric_filter_value
  }
}

resource "aws_cloudwatch_metric_alarm" "metric_filter_alarm" {
  alarm_name          = "iam-metric-filter-alarm"
  comparison_operator = var.cw_metric_filter_alarm_comparison_operator
  evaluation_periods  = var.cw_metric_filter_alarm_evaluation_periods
  metric_name         = "iam-metric-filter"
  namespace           = var.cw_metric_filter_namespace
  period              = var.cw_metric_filter_alarm_period
  statistic           = var.cw_metric_filter_alarm_statistic
  threshold           = var.cw_metric_filter_alarm_threshold
  alarm_description   = "Alarm when the resource exceeds the specified threshold."
  alarm_actions       = var.cw_metric_filter_alarm_actions
}
