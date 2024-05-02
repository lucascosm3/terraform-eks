variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources (Name tag)"

}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"

}

variable "oidc" {
  type        = string
  description = "HTTPS URL from OIDC provider of the EKS cluster"
}
