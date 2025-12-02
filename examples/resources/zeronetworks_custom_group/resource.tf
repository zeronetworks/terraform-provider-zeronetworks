resource "zeronetworks_custom_group" "my_customgroup" {
  conditions = {
    asset_types = [
      4
    ]
    name_patterns = [
      "..."
    ]
    os_name_patterns = [
      "..."
    ]
    os_types = [
      8
    ]
  }
  description = "...my_description..."
  members_id = [
    "g:c:ab124as2",
  ]
  name = "...my_name..."
}