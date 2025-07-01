module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "chukwu.emmanuel@aol.com"
    AccountName               = "JamesKene"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "chukwu.emmanuel@aol.com"
    SSOUserFirstName          = "James"
    SSOUserLastName           = "ken"
  }

  # ≤— keep at least ONE tag
  account_tags = {
    Environment = "Sandbox"
  }

  # ≤— ***MANDATORY*** two keys, even if just placeholder text
  change_management_parameters = {
    change_requested_by = "automation"
    change_reason       = "initial create"
  }

  # ≤— Can be empty, but not null
  custom_fields = {}
  
  # ≤— If you don’t use per-account customisations, pass empty string
  account_customizations_name = "Sandbox"
}