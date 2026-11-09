Vagrant.configure("2") do |config|

  # Imagen base de Debian 12
  config.vm.box = "debian/bookworm64"

  # Servidor DNS
  config.vm.define "dns" do |dns|

    dns.vm.hostname = "dns.jose.test"

    dns.vm.network "private_network",
      ip: "192.168.57.5"

  end

  # Servidor web y FTP
  config.vm.define "negocio" do |negocio|

    negocio.vm.hostname = "negocio.jose.test"

    negocio.vm.network "private_network",
      ip: "192.168.57.7"

  end

  # Nodo de control Ansible
  config.vm.define "ansible" do |ansible|

    ansible.vm.hostname = "ansible.jose.test"

    ansible.vm.network "private_network",
      ip: "192.168.57.6"

    ansible.vm.provision "shell",
      path: "script/ansible.sh"

  end

end