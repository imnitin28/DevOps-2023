#Provision the VM by adding script to Vagrantfile
sed -i '62 i config.vm.provision :shell, path: "bootstrap.sh"' Vagrantfile > sed_out
echo "============= VM Provisioned with bootstrap.sh  =============="

# Reload Provisioning
vagrant reload --provision
echo "============= reloaded VM =============="
