Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end

  (1..3).each do |i|
    config.vm.define "vm-#{i}" do |vm|
      vm.vm.hostname = "vm#{i}"
      vm.vm.network "private_network", ip: "192.168.56.#{i+10}"
      vm.vm.network "forwarded_port", guest: "8500", host: "850#{i}"
      vm.vm.network "forwarded_port", guest: "4646", host: "464#{i}"
      vm.vm.network "forwarded_port", guest: "80", host: "808#{i}"
    end
  end
end

