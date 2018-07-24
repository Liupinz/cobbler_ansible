#
# Sample scripted installation file
# for ESXi 6+
#

vmaccepteula
reboot --noeject
rootpw --iscrypted $1$c96GcKtl$92iTqDRE901SJXEpkxrfj0

install --firstdisk --overwritevmfs
clearpart --firstdisk --overwritevmfs

#Set network
network --bootproto=dhcp --device=vmnic0

#install script
%pre --interpreter=busybox

$SNIPPET('kickstart_start')
$SNIPPET('pre_install_network_config')

%post --interpreter=busybox

$SNIPPET('kickstart_done')
