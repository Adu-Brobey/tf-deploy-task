locals {
  instance_type_map = {
    dev  = "t2.micro"
    prod = "t3.large"
  }
  
  security_group_name = "web-sg-${var.environment}"
  vpc_name           = "${var.environment}-vpc"
  subnet_name        = "${var.environment}-public-subnet"
  
  instance_type = var.instance_type != "t2.micro" ? var.instance_type : local.instance_type_map[var.environment]
  
  common_tags = merge(var.tags, {
    Environment = var.environment
  })
}
