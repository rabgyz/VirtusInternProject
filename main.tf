# main.tf

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.16.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "virtus_nginx" {
  name         = "virtus_nginx"
   build {
   path  ="."
   tag   = ["virtus_nginx:develop"]
   }
}

resource "docker_container" "virtus_nginx" {
  image = docker_image.virtus_nginx.latest
  name  = var.container_name
  ports {
    internal = 80
    external = var.external_port
  }
}

# variables.tf

variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "ExampleNginxContainer"
}

variable "external_port" {
  description	= "External port for nginx"
  type		= number
  default	= 8080 
}
