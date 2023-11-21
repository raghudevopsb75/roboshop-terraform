env               = "dev"
project_name      = "roboshop"
kms_key_id        = "arn:aws:kms:us-east-1:739561048503:key/e8e78cec-c8e2-4f7d-a525-554ed53015d2"
bastion_node_cidr = ["172.31.23.123/32"]
prometheus_cidr   = ["172.31.17.71/32"]

## VPC
vpc_cidr               = "10.0.0.0/16"
public_subnets         = ["10.0.0.0/24", "10.0.1.0/24"]
web_subnets            = ["10.0.2.0/24", "10.0.3.0/24"]
app_subnets            = ["10.0.4.0/24", "10.0.5.0/24"]
db_subnets             = ["10.0.6.0/24", "10.0.7.0/24"]
azs                    = ["us-east-1a", "us-east-1b"]
default_vpc_id         = "vpc-0468c874d427a36de"
default_vpc_cidr       = "172.31.0.0/16"
default_route_table_id = "rtb-005398010e7bea680"
account_no             = "739561048503"


## RDS
instance_class = "db.t3.medium"


# Docdb
docdb_instance_count = 1
docdb_instance_class = "db.t3.medium"

## Elasticache
ec_node_type  = "cache.t3.micro"
ec_node_count = 2

# Rabbitmq
rabbitmq_instance_type = "t3.micro"

components = {
  frontend = {
    count         = 1
    instance_type = "t3.micro"
    app_port      = 80
  }
  catalogue = {
    count         = 1
    instance_type = "t3.micro"
    app_port      = 8080
  }
  cart = {
    count         = 1
    instance_type = "t3.micro"
    app_port      = 8080
  }
  user = {
    count         = 1
    instance_type = "t3.micro"
    app_port      = 8080
  }
  shipping = {
    count         = 1
    instance_type = "t3.micro"
    app_port      = 8080
  }
  payment = {
    count         = 1
    instance_type = "t3.micro"
    app_port      = 8080
  }
  dispatch = {
    count         = 1
    instance_type = "t3.micro"
    app_port      = 8080
  }
}


alb = {
  public = {
    internal = false
  }
  private = {
    internal = true
  }
}

