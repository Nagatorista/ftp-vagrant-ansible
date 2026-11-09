#!/usr/bin/env bash

# Configura el servidor como nodo de control de Ansible

set -xeu

# Actualizar los repositorios
apt-get update

# Instalar Ansible y Ansible Lint
apt-get install -y ansible ansible-lint

# Copiar archivos de configuración
# Los descomentaremos cuando estén creados.

# cp -vf /vagrant/ansible.cfg .
# cp -vf /vagrant/inventory.yml .
# cp -vf /vagrant/requirements.yml .

# cp -vrf /vagrant/dns .
# cp -vrf /vagrant/web .
# cp -vrf /vagrant/ftp .

# chown vagrant:vagrant ./ftp/vars/vault.yml

# Instalar dependencias de Ansible
# ansible-galaxy collection install -r requirements.yml

# Provisionar los servidores
# ansible-playbook dns/dns.yml
# ansible-playbook web/web.yml
# ansible-playbook ftp/ftp.yml