resource "zeronetworks_custom_group" "my_customgroup" {
  conditions = {
    asset_types = [
      67
    ]
    domains = [
      "..."
    ]
    ip_builtins = [
      "..."
    ]
    name_patterns = [
      "..."
    ]
    os_name_patterns = [
      "..."
    ]
    os_types = [
      4
    ]
  }
  description = "...my_description..."
  members_id = [
    "g:c:ab124as2",
  ]
  name = "...my_name..."
}