resource "zeronetworks_inbound_rule" "my_inboundrule" {
  action        = 2
  change_ticket = "...my_change_ticket..."
  description   = "...my_description..."
  excluded_local_ids_list = [
    "..."
  ]
  expires_at      = 1
  ip_sec_opt      = 5
  local_entity_id = "...my_local_entity_id..."
  local_processes_list = [
    "..."
  ]
  name = "...my_name..."
  ports_list = [
    {
      ports         = "...my_ports..."
      protocol_type = 52
    }
  ]
  remote_entity_ids_list = [
    "..."
  ]
  services_list = [
    "..."
  ]
  src_users_list = [
    {
      id  = "...my_id..."
      sid = "...my_sid..."
    }
  ]
  state = 2
}