locals {
  oidc = split("/", var.oidc)[4]
}
