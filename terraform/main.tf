module "service_quota_test" {
  source = "./modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail              = "eechukwuawslab+quotatest@gmail.com"
    AccountName               = "quota-test-sg-rules"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "eechukwuawslab+quotatest@gmail.com"
    SSOUserFirstName          = "QuotaTest"
    SSOUserLastName           = "User"
  }
  
  account_tags = {
    "Learn Tutorial" = "AFT"
    "Purpose"        = "Service-Quota-Testing"
    "QuotaTarget"    = "SG-Rules-200"
  }
  
  change_management_parameters = {
    change_requested_by = "Service Quota Implementation"
    change_reason       = "Test automated Security Group quota increase"
  }
  
  custom_fields = {
    group = "quota-test"
  }
  
  account_customizations_name = "service-quota-test"
}
