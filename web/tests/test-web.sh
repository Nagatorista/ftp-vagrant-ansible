cat << 'EOF' > web/tests/test-web.sh
#!/usr/bin/env bash
set -e

URL="http://192.168.57.7"

echo "Comprobando servidor web..."
curl -fsS "$URL" | grep -q "Servidor web de jose.test"
echo "OK: Apache sirve la página correctamente."
EOF
chmod +x web/tests/test-web.sh