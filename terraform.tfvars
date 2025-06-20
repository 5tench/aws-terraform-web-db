region             = "us-east-2"
availability_zones = ["us-east-2a", "us-east-2b"]

vpc_name = "terraform_vpc"
vpc_cidr = "192.168.0.0/24"

igw_name      = "terraform-igw"
subnet_name   = "terraform_subnet"
subnet_cidr_1 = "192.168.0.0/25"
subnet_cidr_2 = "192.168.0.128/25"

tfroute                        = "terraform-rt"
tfroute_destination_cidr       = "0.0.0.0/0"
tfroute_table_association_name = "terraform-rt-assoc"

ami_id        = "ami-060988b0dff2faa7c"
instance_type = "t3.micro"

tfinstance_web = "terraform_ec2_web"

terraform_sg             = "tfweb-allow-http-https"
terraform_sg_description = "Security group allowing web traffic"

ip_protocol           = "tcp"
application_protocols = ["http", "https"]

ingress_description = "Allow HTTPS & HTTP"
egress_description  = "Allow all outbound traffic"

ingress_rules = {
  http  = 80
  https = 443
  ssh   = 22
  icmp  = -1
}

egress_rules = {
  all = 0
}

public_key_path = "~/.ssh/id_rsa.pub"
key_pair_name   = "cloudninja4-key"

# ===== RDS specific variables =====

iam_user_name        = "terraform"
allocated_storage    = 20
engine               = "mysql"
engine_version       = "8.0"
instance_class       = "db.t3.micro"
db_name              = "mydatabase"
username             = "admin"
password             = "ChangeMe123!"
parameter_group_name = null
db_subnet_group_name = "my-db-subnet-group"
# vpc_security_group_ids =  # Replace with your actual SG ID(s)# OR dynamically pass a newly created SG like I have
publicly_accessible = false
skip_final_snapshot = true
tfinstance_DB       = "terraform-rds"
