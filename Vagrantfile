Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network :forwarded_port, guest: 3000, host: 2323
  config.vm.network :forwarded_port, guest: 4200, host: 2322
  config.vm.network :private_network, ip: "192.168.222.222"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1536
    vb.cpus = 2
  end

  # Fix error stdin no tty
  #
  config.vm.provision "fix-no-tty", type: "shell" do |shell|
    shell.privileged = false
    shell.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end

  config.vm.provision :shell, path: "scripts/nodejs.sh"
  config.vm.provision :shell, path: "scripts/rvm.sh", args: "stable", privileged: false
  config.vm.provision :shell, path: "scripts/ruby.sh", args: "2.4.0 rails", privileged: false
end
