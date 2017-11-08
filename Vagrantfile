# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  #config.vm.box = "freebsd/FreeBSD-11.1-STABLE"
  config.vm.hostname = "ansible-linux-laptop"

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provision.yml"
    ansible.become = true
    ansible.raw_arguments = ["--extra-vars ran_from_vagrant='true'"]
  end
end
