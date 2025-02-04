The IP address configured for the host-only network is not within the
allowed ranges. Please update the address used to be within the allowed
ranges and run the command again.

надо в вб сетку создать
посмотреть ip a
vboxnet0 то, что нам надо

VirtualBox can't enable the AMD-V extension

надо временно отключить модули ядра kvm и kvm_amd

sudo rmmod kvm_amd
sudo rmmod kvm


