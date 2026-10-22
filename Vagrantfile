Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"

# Máquina1
  config.vm.define "maquina1" do |primario|
    primario.vm.network "private_network", ip: "192.168.56.10"
  end

  # Máquina2
  config.vm.define "maquina2" do |secundario|
    secundario.vm.network "private_network", ip: "192.168.56.11"
  end
end







