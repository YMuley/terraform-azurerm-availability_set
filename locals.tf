locals {
  availability_set = {for availability_set in var.availability_set_list : availability_set.name => availability_set}
}