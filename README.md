# FTP seguro con Vagrant y Ansible

## Descripción

Este proyecto permite desplegar una infraestructura de servidores Debian mediante Vagrant y Ansible.

La infraestructura incluye:
- Un servidor DNS con BIND9.
- Un nodo de control para Ansible.
- Un servidor web con Apache.
- Un servidor FTP seguro con vsftpd y TLS.

## Infraestructura

| Máquina | Dirección IP | Función |
|---|---|---|
| dns | 192.168.57.5 | Servidor DNS |
| ansible | 192.168.57.6 | Nodo de control |
| negocio | 192.168.57.7 | Servidor web y FTP |

## Requisitos

- VirtualBox.
- Vagrant.
- Git.
- Un ordenador con recursos suficientes para ejecutar tres máquinas virtuales.

## Puesta en marcha

Clonar el repositorio:

```bash
git clone https://github.com/Nagatorista/ftp-vagrant-ansible.git
cd ftp-vagrant-ansible
```

Crear las máquinas virtuales:

```bash
vagrant up
```

Comprobar su estado:

```bash
vagrant status
```

Acceder al nodo Ansible:

```bash
vagrant ssh ansible
```

## Servicios

- DNS: resolución de nombres del dominio.
- Web: Apache en negocio.
- FTP: vsftpd con autenticación local y TLS explícito.

## Seguridad

El acceso anónimo está deshabilitado y las transferencias FTP están protegidas mediante TLS. Las contraseñas de los usuarios se almacenan cifradas mediante Ansible Vault.

## Autor

Jsansor1505