#!/usr/bin/env bash

set -xeu

# Actualizar Debian
apt-get update

# Instalar herramientas
apt-get install -y ansible ansible-lint whois

# Directorio de trabajo
mkdir -p /home/vagrant
cd /home/vagrant

# Copiar configuración general
cp -vf /vagrant/ansible.cfg .
cp -vf /vagrant/inventory.yml .
cp -vf /vagrant/requirements.yml .

# Copiar playbooks
cp -vrf /vagrant/dns .
cp -vrf /vagrant/web .
cp -vrf /vagrant/ftp .

# Ajustar propietario de archivos
chown -R vagrant:vagrant /home/vagrant/dns
chown -R vagrant:vagrant /home/vagrant/web
chown -R vagrant:vagrant /home/vagrant/ftp

# Instalar colecciones
ansible-galaxy collection install -r requirements.yml
