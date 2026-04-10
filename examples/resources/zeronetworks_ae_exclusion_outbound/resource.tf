resource "zeronetworks_ae_exclusion_outbound" "my_aeexclusionoutbound" {
  action      = 2
  description = "...my_description..."
  excluded_local_ids_list = [
    "..."
  ]
  ip_sec_opt      = 1
  local_entity_id = "...my_local_entity_id..."
  local_processes_list = [
    "..."
  ]
  ports_list = [
    {
      ports         = "...my_ports..."
      protocol_type = 139
    }
  ]
  remote_entity_ids_list = [
    "..."
  ]
  src_users_list = [
    {
      id  = "...my_id..."
      sid = "...my_sid..."
    }
  ]
  state = 5
}