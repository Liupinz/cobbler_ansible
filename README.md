```
#Install os by cobbler
#When you run this ansible script，you should do follow steps:

#1:yum install ansible
#2:download CentOS-7-x86_64-Minimal-1511 iso to replace the CentOS-7-x86_64-Minimal-1511 file in cobbler/roles/cobbler/files
#3:download esxi iso to replace the esxi file in cobbler/roles/cobbler/files
#4:modify the /cobbler/group_vars/all.yml to the actual IP information.
#5:ansible-playbook cobbler.yml "to install ansible."

```
