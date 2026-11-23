#!/usr/bin/env bash

# Configura el servidor como nodo de control de Ansible

set -xeu

# Actualizar los repositorios
apt-get update

# Instalar Ansible y Ansible Lint
apt-get install -y ansible ansible-lint

# Directorio de trabajo de Ansible
mkdir -p /home/vagrant

cd /home/vagrant

# Copiar la configuración
cp -vf /vagrant/ansible.cfg .
cp -vf /vagrant/inventory.yml .
cp -vf /vagrant/requirements.yml .
cp -vrf /vagrant/dns .
# cp -vrf /vagrant/web .
# cp -vrf /vagrant/ftp .
# chown vagrant:vagrant ./ftp/vars/vault.yml

# Instalar las dependencias
ansible-galaxy collection install -r requirements.yml
# Provisionar con Ansible
# ansible-playbook dns/dns.yml
# ansible-playbook web/web.yml
# ansible-playbook ftp/ftp.yml
cp -vrf /vagrant/web /home/vagrant/