provider "aws" {
  region              = "eu-west-3"
}

module "webservers_ecs" {
  source = "../modules/services/webserver"
  cluster_name        = "kantox-dev"
  name_alb            = "kantox-alb-dev"
  #name_tasks          = "kantox_task"
  name_service        = "kantox-service"
  memory_tasks        = 512
  cpu_tasks           = 256
}    