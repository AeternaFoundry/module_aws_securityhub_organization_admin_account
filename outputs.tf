output "securityhub_organization_admin_accounts_id" {
  description = "Map of id values across all securityhub_organization_admin_accounts, keyed the same as var.securityhub_organization_admin_accounts"
  value       = { for k, v in aws_securityhub_organization_admin_account.securityhub_organization_admin_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securityhub_organization_admin_accounts_admin_account_id" {
  description = "Map of admin_account_id values across all securityhub_organization_admin_accounts, keyed the same as var.securityhub_organization_admin_accounts"
  value       = { for k, v in aws_securityhub_organization_admin_account.securityhub_organization_admin_accounts : k => v.admin_account_id if v.admin_account_id != null && length(v.admin_account_id) > 0 }
}
output "securityhub_organization_admin_accounts_region" {
  description = "Map of region values across all securityhub_organization_admin_accounts, keyed the same as var.securityhub_organization_admin_accounts"
  value       = { for k, v in aws_securityhub_organization_admin_account.securityhub_organization_admin_accounts : k => v.region if v.region != null && length(v.region) > 0 }
}

