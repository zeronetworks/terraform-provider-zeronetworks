resource "zeronetworks_inbound_mfa_policy" "my_inboundmfapolicy" {
  additional_ports_list = [
    {
      ports         = "...my_ports..."
      protocol_type = 150
    }
  ]
  change_ticket = "...my_change_ticket..."
  description   = "...my_description..."
  dst_entity_info = {
    id = "...my_id..."
  }
  dst_port = "3389"
  dst_process_names = [
    "c:\\test.exe"
  ]
  excluded_src_entity_infos = [
    {
      id = "...my_id..."
    }
  ]
  excluded_src_processes = [
    "..."
  ]
  fallback_to_logged_on_user = false
  identity_protection_category_list = [
    0
  ]
  mfa_methods = [
    1
  ]
  name                               = "...my_name..."
  override_builtins                  = true
  protocol_type                      = 1
  restrict_login_to_originating_user = true
  rule_duration                      = 3
  src_entity_infos = [
    {
      id = "...my_id..."
    }
  ]
  src_process_names = [
    "system"
  ]
  src_user_infos = [
    {
      id = "...my_id..."
    }
  ]
  state              = 1
  use_default_idp    = false
  use_occasional_mfa = false
}