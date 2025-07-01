###############################################################################
# AFT Account Request – Sandbox Test Account (email: +sandboxaft1)
###############################################################################

module "sandbox" {
  source = "./modules/aft-account-request"

  # ───────── 1. Control Tower parameters ─────────
  control_tower_parameters = {
    AccountEmail              = "eechukwuawslab+sandboxaft1@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"

    # Identity Center (SSO) user — keep if required by your CT config
    SSOUserEmail              = "eechukwuawslab+sandboxaft1@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  # ───────── 2. Tags ─────────
  account_tags = {
    Environment = "Sandbox"
    Owner       = "PlatformTeam"
  }

  # ───────── 3. Change-management metadata ─────────
  change_management_parameters = {
    change_requested_by = "Platform Team"
    change_reason       = "Validate SG-quota automation, testing"
  }

  # ───────── 4. Optional custom fields ─────────
  custom_fields = {
    group = "non-prod"
  }
}