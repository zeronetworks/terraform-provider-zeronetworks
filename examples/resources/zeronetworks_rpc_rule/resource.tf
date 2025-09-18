resource "zeronetworks_rpc_rule" "my_rpcrule" {
  action        = 1
  change_ticket = "...my_change_ticket..."
  description   = "...my_description..."
  excluded_asset_ids_list = [
    "..."
  ]
  expires_at = 2
  interface_uuids_list = [
    "..."
  ]
  local_asset_id = "...my_local_asset_id..."
  name           = "...my_name..."
  op_numbers_list = [
    7
  ]
  protocols_list = [
    5
  ]
  remote_asset_ids_list = [
    "..."
  ]
  state = 3
  user_ids_list = [
    "..."
  ]
}