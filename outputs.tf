output "layer_arn" {
  value       = local.pandas_layer_arns[var.region][var.architecture][var.runtime]
  description = "AWS SDK for Pandas layer ARN for the given region, architecture, and runtime"
}