variable "region" {
  type        = string
  description = "AWS region"
}

variable "architecture" {
  type        = string
  description = "Runtime architecture"
  default     = "x86_64"
}

variable "runtime" {
  type        = string
  description = "Python runtime version"
  default     = "python3.9"
}