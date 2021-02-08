locals {
  this = local.is_mssql ? aws_db_instance.this_mssql[0] : aws_db_instance.this[0]

  enhanced_monitoring_iam_role_name     = element(concat(aws_iam_role.enhanced_monitoring.*.name, [""]), 0)
  enhanced_monitoring_iam_role_arn      = element(concat(aws_iam_role.enhanced_monitoring.*.arn, [""]), 0)

  this_db_instance_address              = var.create ? local.this.address : ""
  this_db_instance_arn                  = var.create ? local.this.arn : ""
  this_db_instance_availability_zone    = var.create ? local.this.availability_zone: ""
  this_db_instance_endpoint             = var.create ? local.this.endpoint : ""
  this_db_instance_hosted_zone_id       = var.create ? local.this.hosted_zone_id : ""
  this_db_instance_id                   = var.create ? local.this.id : ""
  this_db_instance_resource_id          = var.create ? local.this.resource_id : ""
  this_db_instance_status               = var.create ? local.this.status : ""
  this_db_instance_name                 = var.create ? local.this.name : ""
  this_db_instance_username             = var.create ? local.this.username : ""
  this_db_instance_port                 = var.create ? local.this.port : ""
  this_db_instance_ca_cert_identifier   = var.create ? local.this.ca_cert_identifier : ""
  this_db_instance_domain               = var.create ? local.this.domain : ""
  this_db_instance_domain_iam_role_name = var.create ? local.this.domain_iam_role_name : ""
}

output "enhanced_monitoring_iam_role_name" {
  description = "The name of the monitoring role"
  value       = local.enhanced_monitoring_iam_role_name
}

output "enhanced_monitoring_iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the monitoring role"
  value       = local.enhanced_monitoring_iam_role_arn
}

output "this_db_instance_address" {
  description = "The address of the RDS instance"
  value       = local.this_db_instance_address
}

output "this_db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = local.this_db_instance_arn
}

output "this_db_instance_availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = local.this_db_instance_availability_zone
}

output "this_db_instance_endpoint" {
  description = "The connection endpoint"
  value       = local.this_db_instance_endpoint
}

output "this_db_instance_hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = local.this_db_instance_hosted_zone_id
}

output "this_db_instance_id" {
  description = "The RDS instance ID"
  value       = local.this_db_instance_id
}

output "this_db_instance_resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = local.this_db_instance_resource_id
}

output "this_db_instance_status" {
  description = "The RDS instance status"
  value       = local.this_db_instance_status
}

output "this_db_instance_name" {
  description = "The database name"
  value       = local.this_db_instance_name
}

output "this_db_instance_username" {
  description = "The master username for the database"
  value       = local.this_db_instance_username
}

output "this_db_instance_port" {
  description = "The database port"
  value       = local.this_db_instance_port
}

output "this_db_instance_ca_cert_identifier" {
  description = "Specifies the identifier of the CA certificate for the DB instance"
  value       = local.this_db_instance_ca_cert_identifier
}

output "this_db_instance_domain" {
  description = "The ID of the Directory Service Active Directory domain the instance is joined to"
  value       = local.this_db_instance_domain
}

output "this_db_instance_domain_iam_role_name" {
  description = "The name of the IAM role to be used when making API calls to the Directory Service. "
  value       = local.this_db_instance_domain_iam_role_name
}
