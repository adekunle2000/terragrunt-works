region                    = "us-east-1"
vpc_cidr                  = "10.0.0.0/16"
vpc_name                  = "DevOps_VPC"
enable_dns_hostname       = "false"
vpc_instance_tenancy      = "default" 

public_subnets_cidr       = ["10.0.0.0/19", "10.0.32.0/19"]
private_subnets_cidr      = ["10.0.64.0/18", "10.0.128.0/17"]
azs                       = ["us-east-1a", "us-east-1b"]

igw_name                  = "DevOps_IGW"

nat_name                  = "DevOps_Nat"

rt_cidr_block             = "0.0.0.0/0"
public_rt_name            = "DevOpsPublic_Route_Table"
private_rt_name           = "DevOpsPrivate_Route_Table"

public_sg_name            = "DevOps_Pub_SG"
private_sg_name           = "DevOps_Pvt_SG"
pvt_sg_ports              = ["22" , "80", "443"]
pvt_sg_protocol           = "tcp"
pub_sg_cidr_blocks        = ["0.0.0.0/0"]

#pub_ami_id                = "ami-0215e376dd0d0b3b3"
ami_id                    = "ami-0cd59ecaf368e5ccf"
public_instance_name      = "DevOps"
instance_type             = "t2.small"
key_name                  = "devops"
additional_tags           = { owner = "devops", tool = "DevOps", team = "leo", }


