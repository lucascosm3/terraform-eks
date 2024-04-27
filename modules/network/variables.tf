variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources (Name tag)"

}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"

}
