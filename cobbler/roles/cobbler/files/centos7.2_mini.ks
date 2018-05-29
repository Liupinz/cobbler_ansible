#platform=x86, AMD64, or Intel EM64T
#version=DEVEL
# Install OS instead of upgrade
install
# Keyboard layouts
keyboard 'us'
# Root password
rootpw --iscrypted $1$c96GcKtl$92iTqDRE901SJXEpkxrfj0
# System language
lang en_US
# System authorization information
auth  --useshadow  --passalgo=sha512
#Use NFS installation Media
url --url=$tree
#Use text mode install
text
# SELinux configuration
selinux --disabled
# Do not configure the X Window System
skipx

# Firewall configuration
firewall --disabled
# Network information
network  --bootproto=dhcp --device=eno16777984
# Reboot after installation
reboot
# System timezone
timezone Asia/Shanghai
# System bootloader configuration
bootloader --location=mbr
# Clear the Master Boot Record
zerombr
# Partition clearing information
clearpart --all
# Disk partitioning information
#part /boot --fstype="ext4" --ondisk=sda --size=500
#part swap --fstype="swap" --ondisk=sda --size=4096
#part / --fstype="ext4" --grow --ondisk=sda --size=1
part /boot --fstype xfs --size 500 --ondisk sda
part swap --size 4096 --ondisk sda
part / --fstype xfs --size 1 --grow --ondisk sda


%packages
%end

%post
%end
