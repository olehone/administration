resource "aws_instance" "my-good-vm" {
 count = 2
 ami = lookup(var.ec2_ami, var.region)
 instance_type = var.instance_type 
 tags = {
    Name = "my-good-vm-${count.index +1}"
 }
}
resource "local_file" "tf_ip" {
 content = "[ALL]\n${aws_instance.my-good-vm[0].public_ip} ansible_ssh_user=ubuntu" 
 filename = "./inventory" 
}