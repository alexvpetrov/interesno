# -*- mode: ruby -*-
# vi: set ft=ruby :

INTERNAL_NET="192.168.1."

servers=[
  {
    :hostname => "bd",
    :ram => 1000,
    :ip_int => INTERNAL_NET+"20",
    :guest => 80,
    :host => 8989
  },
  {
    :hostname => "web",
    :ram => 1000,
    :ip_int => INTERNAL_NET+"21",
    :guest => 80,
    :host => 8181
  }
]


Vagrant.configure("2") do |config|
  #config.vm.box = "generic/debian10"
  config.vm.box_check_update = false
  #config.vm.network "forwarded_port", guest: [:forw_guest_port], host: [:forw_host_port]
  servers.each do |machine|
      config.vm.define machine[:hostname] do |node|
          node.vm.box = "generic/debian10"
          node.vm.hostname = machine[:hostname]
          node.vm.network "private_network", ip: machine[:ip_int], virtualbox__intnet: "intnet"
          node.vm.network "forwarded_port", guest: machine[:guest], host: machine[:host]
      end
  end
  config.vm.provision "ansible" do |ansible|
      #ansible.verbose = "v"
      ansible.playbook = "playbook_main.yml"
  end
end

