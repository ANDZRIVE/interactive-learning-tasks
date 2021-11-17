resource "null_resource" "r1soft_install" {
  depends_on = [aws_instance.r1soft, aws_security_group.allow_tls1]
  triggers = {
    always_run = timestamp()
  }
  # Push files to remote server
  provisioner "file" {
    connection {
      host        = aws_instance.r1soft.public_ip
      type        = "ssh"
      user        = "centos"
      private_key = file("~/.ssh/id_rsa")
    }
    source      = "r1soft.repo"
    destination = "/tmp/r1soft.repo"
  }
  # Execute linux commands on remote machine
  provisioner "remote-exec" {
    connection {
      host        = aws_instance.r1soft.public_ip
      type        = "ssh"
      user        = "centos"
      private_key = file("~/.ssh/id_rsa")
    }
    inline = [
      "sudo cp /tmp/r1soft.repo /etc/yum.repos.d/",
      "sudo  yum install r1soft-cdp-enterprise-server -y",
      "sudo r1soft-setup --user admin1 --pass redhat1 --http-port 80",
      "sudo systemctl restart cdp-server",




      //"sudo yum install telnet -y",
      //"sudo yum install elinks -y",
      //"sudo mkdir  /tmp/testfolder",
      //"echo Hello"
    ]
  }
}