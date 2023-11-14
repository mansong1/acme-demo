variable "name" {
  type    = string
  default = "mansong-iacm-ec2"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_type" {
  type    = string
  default = "t3a.small"
}

variable "vpc_id" {
  type = string
}

variable "tags" {
  type = map
  default     = {
    project     = "mansong",
    environment = "dev"
  }
}

variable "ebs_size" {
  type    = number
  default = 1
}
