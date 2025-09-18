resource "zeronetworks_outbound_mfa_policy" "my_outboundmfapolicy" {
  additional_ports_list = [
    {
      ports         = "...my_ports..."
      protocol_type = 170
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
  mfa_methods = [
    1
  ]
  name                               = "...my_name..."
  override_builtins                  = true
  protocol_type                      = 6
  restrict_login_to_originating_user = true
  restrict_to_originated_user        = true
  rule_duration                      = 6
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
  use_default_idp    = true
  use_occasional_mfa = true
}