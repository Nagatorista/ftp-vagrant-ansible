
#!/usr/bin/env bash

set -e

DNS="192.168.57.5"

echo "Comprobando DNS..."

dig @"$DNS" dns.jose.test +short | grep -qx "192.168.57.5"

dig @"$DNS" ansible.jose.test +short | grep -qx "192.168.57.6"

dig @"$DNS" negocio.jose.test +short | grep -qx "192.168.57.7"

dig @"$DNS" www.jose.test +short | grep -qx "192.168.57.7"

dig @"$DNS" ftp.jose.test +short | grep -qx "192.168.57.7"

dig @"$DNS" -x 192.168.57.7 +short | grep -qx "negocio.jose.test."

echo "OK: pruebas DNS superadas."
