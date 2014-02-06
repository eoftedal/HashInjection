# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v0.1.0/centos64-x86_64-20131030.box"

  config.vm.hostname = "hash-injection"
  
  config.vm.network :private_network, ip: "192.168.33.5"

  config.ssh.forward_agent = true

  config.vm.provision :shell, :path => "vm-setup.sh"


  config.vm.synced_folder "app", "/tmp/app"


  config.vm.provider :virtualbox do |vb|
     vb.name = "Hash Injection"
  end



end
