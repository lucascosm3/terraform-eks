variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources (Name tag)"

}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"

}

variable "public_subnet_1a" {
  type        = string
  description = "Subnet to create EKS cluster AZ 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "Subnet to create EKS cluster AZ 1b"
}
