#!/bin/bash

logins=$(cut -d: -f7 /etc/passwd)
count=$(echo "$logins" | sort | uniq -c)
result=$(echo "$count" | sort -n)

echo "Usuarios por tipo de inicio de sesión:"
echo "$result"
