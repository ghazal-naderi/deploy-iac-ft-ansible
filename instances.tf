#Get Linux AMI ID using SSM Parameter endpoit in us-east-1
data "aws_ssm_parameter" "linuxAmi" {
  provider = aws.region-master
  name     = "/aws/services/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}


#Get Linux AMI ID using SSM Parameter endpoit in us-west-2
data "aws_ssm_parameter" "linuxAmiOregon" {
  provider = aws.region-worker
  name     = "/aws/services/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}


