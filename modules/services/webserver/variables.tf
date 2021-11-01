variable "name_alb" {
  description = "The name of the load balancer"
  type        = string
}
variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

#variable "name_tasks" {
#  description = "The name of the task"
#  type        = string
#}

variable "name_service" {
  description = "The name of the service"
  type        = string
}

variable "memory_tasks" {
  description = "The memory for the tasks"
  type        = number
}

variable "cpu_tasks" {
  description = "The cpu for the tasks"
  type        = number
}
