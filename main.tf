module "image"{
 source = "./modules/image"
 image_name = var.rootImage
}

module "container"{
   source = "./modules/container"
   image_name = module.image.image_out
   container_name = var.rootContainer
}
