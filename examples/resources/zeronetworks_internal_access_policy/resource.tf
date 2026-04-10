resource "zeronetworks_internal_access_policy" "my_internalaccesspolicy" {
  change_ticket = "...my_change_ticket..."
  description   = "...my_description..."
  dst_asset_id  = "...my_dst_asset_id..."
  dst_ports_list = [
    {
      ports         = "...my_ports..."
      protocol_type = 149
    }
  ]
  dst_process_names_list = [
    "..."
  ]
  name          = "...my_name..."
  rule_duration = 8
  src_user_ids_list = [
    "..."
  ]
  state = 6
}