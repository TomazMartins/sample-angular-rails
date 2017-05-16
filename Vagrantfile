Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network :forwarded_port, guest: 8080, host: 2323
  config.vm.network :private_network, ip: "192.168.222.222"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1536
    vb.cpus = 2
  end
end
