output "load_balancer_dns" {
  value       = aws_alb.application_load_balancer.dns_name
  description = "dns loadbalancder"
}

output "load_balancer_name" {
  value       = aws_alb.application_load_balancer.name
  description = "loadbalancder name"
}

output "ecs_name" {
  value       = aws_ecs_cluster.my_cluster.name
  description = "ecs name"
}

output "service_name" {
  value       = aws_ecs_service.kantox_service.cluster
  description = "tasks name"
}

