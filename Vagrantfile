VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.6.0"

Vagrant.configure("2") do |config|
  ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

	config.vm.define :ct_web do |ct_web|
		ct_web.vm.network "forwarded_port", guest: 80, host: 8095
		ct_web.vm.provider "docker" do |d1|
			d1.build_dir = "./box1"
			d1.has_ssh = false
		end
	end
	
	config.vm.define :ct_ssh do |ct_ssh|
		ct_ssh.ssh.port = 22
        	ct_ssh.vm.provider "docker" do |d2|
                        d2.build_dir = "./box2"
                        d2.has_ssh = true
                end
	end

	config.vm.define :ct_ftp do |ct_ftp|
                ct_ftp.vm.provider "docker" do |d3|
                        d3.build_dir = "./box3"
			d3.has_ssh = false
                end
        end

	 config.vm.define :ct_cliente do |ct_cliente|
                ct_cliente.vm.provider "docker" do |d4|
                        d4.build_dir = "./box4"
                        d4.has_ssh = true
                end
        end
  end
