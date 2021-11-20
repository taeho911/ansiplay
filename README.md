# Ansible Play

## vboxmanage

```
# VB Networks
https://technote.kr/213

# VB list up registered vms
vboxmanage list vms

# VB export
vboxmanage export <machines> --output <name>.ova

# VM import
vboxmanage import <name>.ova

# VB clone
vboxmanage clonevm <uuid|vmname> --name <name>

# VB create new vm from existing vm
vboxmanage clonevm <uuid|vmname> --name <name>
vboxmanage registervm <filename>
ex)
vboxmanage clonevm ansi1 --name ansi4
vboxmanage registervm 'C:\Users\kimdo\VirtualBox VMs\ansi4\ansi4.vbox'

# VB start vms
vboxmanage startvm ansi1 ansi2 ansi3

# VB start vms backgrount
vboxmanage startvm ansi1 --type headless

# VB poweroff vms
vboxmanage controlvm ansi1 poweroff
```

## ubuntu

```
# Initial settings
sudo apt update && sudo apt install net-tools git curl wget

# Install docker
sudo apt install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

## ssh

```
# ssh-keygen을 이용한 ssh 통신
ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub taeho@192.168.0.4
ssh-copy-id -i ~/.ssh/id_rsa.pub taeho@192.168.0.5

# ssh command 실행
ssh 192.168.0.3 "echo Hello"
ssh 192.168.0.3 < commands.sh

# Windows의 ssh-copy-id
```

## ansible

```
# Execute playbook
ansible-playbook -b -v -u root crunchify_execute_command.yml -kkkk --extra-vars "crunchify-group" -i crunchify-hosts

```