variable "availability_set_list" {
    type = list(any)
    default = []
    description = "List of availability set objects"  
}

variable "resource_group_output" {
    type = map(any)
    default = {}
    description = "outputs of resource group objects"
}

variable "proximity_placement_group_output" {
    type = map(any)
    default = {}
    description = "outputs of proximity placement group objects"
}

variable "default_values" {
  type        = any
  default     = {}
  description = "Provide default values for resource if not any"
}