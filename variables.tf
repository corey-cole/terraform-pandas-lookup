variable "region" {
  type        = string
  description = "AWS region hosting the Lambda Insights layer"
}

variable "architecture" {
  type        = string
  description = "Lambda runtime architecture"
  default     = "x86_64"

  validation {
    condition     = contains(["x86_64", "arm64"], var.architecture)
    error_message = "Unknown architecture"
  }
}

variable "runtime" {
  type        = string
  description = "Python runtime version"
  default     = "python3.9"

  validation {
    condition     = contains(["python3.7", "python3.8", "python3.9"], var.runtime)
    error_message = "Unsupported runtime"
  }
}