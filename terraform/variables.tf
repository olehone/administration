variable "ec2_ami" {
 type = map
 default = {
 eu-west-2 = "ami-05af693a503275cff"
 }
}
variable "region" {
 default = "eu-west-2"
}
variable "instance_type" {
 default = "t2.micro"
}