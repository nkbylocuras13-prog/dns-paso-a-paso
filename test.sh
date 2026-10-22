#!/usr/bin/env bash
echo "=== 1. Comprobación de sintaxis de ficheros ==="
named-checkconf /etc/bind/named.conf.options && echo "[OK] named.conf.options"
named-checkzone enrique.test /var/lib/bind/enrique.test.dns && echo "[OK] Zona directa"
named-checkzone 56.168.192.in-addr.arpa /var/lib/bind/enrique.test.rev && echo "[OK] Zona inversa"

echo "=== 2. Comprobación de resolución ==="
dig @192.168.56.10 web.enrique.test CNAME +short
dig @192.168.56.10 enrique.test TXT +short
dig @192.168.56.10 -x 192.168.56.10 +short