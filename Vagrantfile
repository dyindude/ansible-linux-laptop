# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "ansible-linux-laptop"

  config.vm.provision "shell", inline: "apt-get update && apt-get install -y python-minimal"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provision.yml"
    ansible.become = true
    ansible.raw_arguments = ["--extra-vars", "'ran_from_vagrant: true'"]
  end
end
