resource "okta_group" "example_group_created_using_terraform" {
  name        = "Example group created using terraform3"
  description = "haha this terraform stuff is pretty interesting"

}

resource "okta_group" "example_group_created_using_terraform2" {
  name = "Example group created using terraform 2"

}