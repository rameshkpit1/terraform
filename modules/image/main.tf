terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}


resource "docker_image" "myimage"{
    name = var.image_name
}

