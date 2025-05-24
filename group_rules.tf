resource "okta_group_rule" "IT_group_rule_test" {
  name              = "IT People"
  status            = "ACTIVE"
  group_assignments = [okta_group.example_group_created_using_terraform.id]
  expression_value  = "String.stringContains(user.firstName, \"Diwas\")"

}

