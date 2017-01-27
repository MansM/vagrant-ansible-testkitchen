Vagrant.configure(2) do |config|
  VROOT=""
  config.ssh.insert_key = false
  config.hostmanager.enabled = true
  #config.cache.scope = :box

  config.vm.box = "mansm/CentOS-7"
  
  config.vm.provider "virtualbox" do |v|
    v.linked_clone = true
  end

  if "<%= config[:kitchen_root] %>"[0] == "/" 
    VROOT="<%= config[:kitchen_root] %>/"
  end
  config.vm.define "manager1" do |vmconfig|
    vmconfig.vm.hostname = "manager1"
    vmconfig.vm.network "private_network", ip: "172.16.50.11"
    vmconfig.vm.provision :ansible do |ansible|
      ansible.playbook =  "#{VROOT}ansible/playbook.yaml"
      ansible.sudo = true
      ansible.verbose = "v"
      ansible.host_key_checking = false
      ansible.limit = "managers"
      ansible.groups = {
        "managers" => ["manager1"]
      }
    end
  end
end