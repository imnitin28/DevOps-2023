# Create a workspace, and inside that create two sub directories(it could be n as well)
# for i in centOS ubuntu; do mkdir -p workspace/$i; done
echo "============= workspace created =============="
cd workspace/ubuntu-20.04
#initialize your VM by mentioning box name
echo "============= Initializing vm using boxName ==============="
# replace boxname with box from vagrant-cloud
vagrant init ubuntu/focal64
#run the initialized box.
echo "============= start and provision the vagrant environment ==============="
vagrant up
echo "=========== Current Vagrant version =============="
vagrant status --version
