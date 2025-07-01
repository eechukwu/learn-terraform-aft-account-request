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


# Test Account 1 - Service Quota Testing
module "quota_test_account_1" {
  source = "./modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail              = "eechukwuawslab+quotatest1@gmail.com"
    AccountName               = "quota-test-sg-1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "eechukwuawslab+quotatest1@gmail.com"
    SSOUserFirstName          = "QuotaTest"
    SSOUserLastName           = "User1"
  }
  
  account_tags = {
    "Purpose"        = "Service-Quota-Testing"
    "TestNumber"     = "1"
    "ExpectedQuota"  = "200"
  }
  
  change_management_parameters = {
    change_requested_by = "AFT Service Quota Test"
    change_reason       = "Test automated Security Group quota increase - Account 1"
  }
  
  custom_fields = {
    group = "quota-test-1"
  }
  
  account_customizations_name = "quota-test-1"
}

# Test Account 2 - Service Quota Testing
module "quota_test_account_2" {
  source = "./modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail              = "eechukwuawslab+quotatest2@gmail.com"
    AccountName               = "quota-test-sg-2"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "eechukwuawslab+quotatest2@gmail.com"
    SSOUserFirstName          = "QuotaTest"
    SSOUserLastName           = "User2"
  }
  
  account_tags = {
    "Purpose"        = "Service-Quota-Testing"
    "TestNumber"     = "2"
    "ExpectedQuota"  = "200"
  }
  
  change_management_parameters = {
    change_requested_by = "AFT Service Quota Test"
    change_reason       = "Test automated Security Group quota increase - Account 2"
  }
  
  custom_fields = {
    group = "quota-test-2"
  }
  
  account_customizations_name = "quota-test-2"
}
