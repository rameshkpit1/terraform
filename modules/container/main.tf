terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

resource "docker_container" "mycont"{
  name = var.container_name
  image = var.image_name
  ports{
    internal = 80
    external = 80
  }
}

