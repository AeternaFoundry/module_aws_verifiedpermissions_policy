output "verifiedpermissions_policies_id" {
  description = "Map of id values across all verifiedpermissions_policies, keyed the same as var.verifiedpermissions_policies"
  value       = { for k, v in aws_verifiedpermissions_policy.verifiedpermissions_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "verifiedpermissions_policies_created_date" {
  description = "Map of created_date values across all verifiedpermissions_policies, keyed the same as var.verifiedpermissions_policies"
  value       = { for k, v in aws_verifiedpermissions_policy.verifiedpermissions_policies : k => v.created_date if v.created_date != null && length(v.created_date) > 0 }
}
output "verifiedpermissions_policies_definition" {
  description = "Map of definition values across all verifiedpermissions_policies, keyed the same as var.verifiedpermissions_policies"
  value       = { for k, v in aws_verifiedpermissions_policy.verifiedpermissions_policies : k => v.definition if v.definition != null && length(v.definition) > 0 }
}
output "verifiedpermissions_policies_policy_id" {
  description = "Map of policy_id values across all verifiedpermissions_policies, keyed the same as var.verifiedpermissions_policies"
  value       = { for k, v in aws_verifiedpermissions_policy.verifiedpermissions_policies : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "verifiedpermissions_policies_policy_store_id" {
  description = "Map of policy_store_id values across all verifiedpermissions_policies, keyed the same as var.verifiedpermissions_policies"
  value       = { for k, v in aws_verifiedpermissions_policy.verifiedpermissions_policies : k => v.policy_store_id if v.policy_store_id != null && length(v.policy_store_id) > 0 }
}
output "verifiedpermissions_policies_region" {
  description = "Map of region values across all verifiedpermissions_policies, keyed the same as var.verifiedpermissions_policies"
  value       = { for k, v in aws_verifiedpermissions_policy.verifiedpermissions_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

