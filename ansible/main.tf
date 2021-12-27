provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "testserver" {
  ami = "ami-053ac55bdcfe96e85"
  instance_type = "t2.medium"
  key_name = "jai-wsl2-key"
  security_groups = ["launch-wizard-174"]
  tags = {
    Name = "Website Demo"
  }
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu -i '${self.public_ip},' webserver.yaml && ansible-playbook -u ubuntu -i '${self.public_ip},' deploy.yaml"
  }
}

output "testserver" {
  value = "${aws_instance.testserver.public_ip}"
}
