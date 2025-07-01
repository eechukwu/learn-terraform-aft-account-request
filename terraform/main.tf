module "service_quota_test_account" {
  source = "./modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail              = "eechukwuawslab+quotatest@gmail.com"
    AccountName               = "quota-test-aft-sg-rules"
    ManagedOrganizationalUnit = "Service-Quota-Testing"
    SSOUserEmail              = "eechukwuawslab+quotatest@gmail.com"
    SSOUserFirstName          = "ServiceQuota"
    SSOUserLastName           = "TestUser"
  }
  
  account_tags = {
    "Purpose"           = "Service-Quota-Automation-Testing"
    "Project"           = "AFT-SecurityGroup-Quota"
    "Environment"       = "Test"
    "AutomatedQuotas"   = "SecurityGroupRules-200"
    "Learn Tutorial"    = "AFT"
  }
  
  change_management_parameters = {
    change_requested_by = "AFT Service Quota Implementation Team"
    change_reason       = "Testing automated Security Group rules quota increase from 60 to 200"
  }
  
  custom_fields = {
    group                = "quota-testing"
    expected_sg_quota    = "200"
    quota_automation     = "enabled"
    test_purpose         = "service-quota-validation"
  }
  
  account_customizations_name = "service-quota-test"
}
