VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "debian/bullseye64"
	config.ssh.insert_key = false
	config.vm.synced_folder ".", "/vagrant", disabled: true
	config.vm.provider :virtualbox do |v|
		v.memory = 512
		v.cpus = 1
		v.linked_clone = true
	end

	config.vm.define "nginx" do |web|
		web.vm.hostname = "nginx.test"
		web.vm.network :private_network, ip: "192.168.60.2"
	end

	config.vm.define "nginxP" do |proxy|
		proxy.vm.hostname = "nginxP.test"
		proxy.vm.network :private_network, ip: "192.168.60.3"
	end
	config.vm.define "prometheus" do |promt|
		promt.vm.hostname = "prometheus.test"
		promt.vm.network :private_network, ip: "192.168.60.4"
	end
	config.vm.define "elk" do |elk|
		elk.vm.disk :disk, size: "10GB", primary: true
		elk.vm.hostname = "elk.test"
		elk.vm.network :private_network, ip: "192.168.60.5"
		config.vm.provider :virtualbox do |v|
			v.memory = 4096
			v.cpus = 2
		end
	end
end
