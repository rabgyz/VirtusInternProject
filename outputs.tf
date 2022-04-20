output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.virtus_nginx.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.virtus_nginx.id
}

