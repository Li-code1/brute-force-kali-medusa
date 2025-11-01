# 🔐 Projeto de Segurança Ofensiva com Kali Linux e Medusa

Este projeto foi desenvolvido como parte do desafio da DIO para aplicar conhecimentos em segurança ofensiva, utilizando Kali Linux e a ferramenta Medusa em ambientes vulneráveis. O objetivo é simular ataques de força bruta e propor medidas de mitigação.

---

## 🧰 Tecnologias e Ferramentas Utilizadas

- **Kali Linux** (máquina atacante)
- **Metasploitable 2** (máquina vulnerável)
- **DVWA (Damn Vulnerable Web Application)**
- **Medusa** – ferramenta de força bruta
- **Nmap** – para enumeração de serviços
- **VirtualBox** – para virtualização
- **Wordlists personalizadas**

---

## 🖥️ Configuração do Ambiente

1. **Máquinas Virtuais:**
   - Kali Linux e Metasploitable 2 instaladas no VirtualBox
   - Rede configurada como `Host-Only Adapter` para comunicação direta

2. **Configuração de IPs:**
   - Kali Linux: `192.168.56.101`
   - Metasploitable 2: `192.168.56.102`

3. **Serviços Ativos:**
   - FTP (vsftpd)
   - Apache + DVWA
   - SMB (Samba)

---

## 🧪 Cenários de Ataque

### 1. Ataque de Força Bruta em FTP

- **Comando:**
  ```bash
  medusa -h 192.168.56.102 -u msfadmin -P wordlists/ftp.txt -M ftp
  ```
- **Resultado:** Acesso obtido com sucesso usando senha fraca.
- **Mitigação:** Desabilitar contas padrão, aplicar políticas de senha forte, limitar tentativas de login.

### 2. Automação de Login Web (DVWA)

- **Configuração:** DVWA em modo "Low"
- **Comando:**
  ```bash
  medusa -h 192.168.56.102 -u admin -P wordlists/web.txt -M http -m FORM:/dvwa/login.php
  ```
- **Resultado:** Login automatizado com sucesso.
- **Mitigação:** Implementar CAPTCHA, bloqueio após tentativas falhas, autenticação multifator.

### 3. Password Spraying em SMB

- **Enumeração de usuários:**
  ```bash
  enum4linux -U 192.168.56.102
  ```
- **Ataque:**
  ```bash
  medusa -h 192.168.56.102 -U wordlists/users.txt -p 123456 -M smbnt
  ```
- **Resultado:** Acesso obtido com senha comum.
- **Mitigação:** Monitoramento de logs, senhas fortes, autenticação baseada em certificados.

---

## 📁 Estrutura do Repositório

```
.
├── scripts/                 
├── wordlists/              
│   ├── ftp.txt
│   ├── web.txt
│   └── users.txt
└── README.md                
```

---

## ✅ Conclusões

- Ataques de força bruta são simples, mas eficazes contra sistemas mal configurados.
- Medusa é uma ferramenta poderosa para testes de penetração automatizados.
- A documentação clara dos testes é essencial para análise e mitigação de riscos.

---

## 📎 Recursos Complementares

- [Kali Linux – Site Oficial](https://www.kali.org/)
- [DVWA – Damn Vulnerable Web Application](http://www.dvwa.co.uk/)
- [Medusa – Documentação](https://tools.kali.org/password-attacks/medusa)
- [Nmap – Manual Oficial](https://nmap.org/book/)

---

## 🚀 Autor

Desenvolvido como parte do desafio da [DIO](https://www.dio.me/).  
Compartilhado como portfólio técnico no GitHub.

```

---

Se quiser, posso te ajudar a personalizar esse README com seus próprios resultados, capturas de tela e links. Quer que eu monte a estrutura de pastas e arquivos também?Claro! Aqui está um modelo de `README.md` completo e bem estruturado para o seu desafio com Kali Linux, Medusa e ambientes vulneráveis:

---

```markdown
# 🔐 Projeto de Segurança Ofensiva com Kali Linux e Medusa

Este projeto foi desenvolvido como parte do desafio da DIO para aplicar conhecimentos em segurança ofensiva, utilizando Kali Linux e a ferramenta Medusa em ambientes vulneráveis. O objetivo é simular ataques de força bruta e propor medidas de mitigação.

---

## 🧰 Tecnologias e Ferramentas Utilizadas

- **Kali Linux** (máquina atacante)
- **Metasploitable 2** (máquina vulnerável)
- **DVWA (Damn Vulnerable Web Application)**
- **Medusa** – ferramenta de força bruta
- **Nmap** – para enumeração de serviços
- **VirtualBox** – para virtualização
- **Wordlists personalizadas**

---

## 🖥️ Configuração do Ambiente

1. **Máquinas Virtuais:**
   - Kali Linux e Metasploitable 2 instaladas no VirtualBox
   - Rede configurada como `Host-Only Adapter` para comunicação direta

2. **Configuração de IPs:**
   - Kali Linux: `192.168.56.101`
   - Metasploitable 2: `192.168.56.102`

3. **Serviços Ativos:**
   - FTP (vsftpd)
   - Apache + DVWA
   - SMB (Samba)

---

## 🧪 Cenários de Ataque

### 1. Ataque de Força Bruta em FTP

- **Comando:**
  ```bash
  medusa -h 192.168.56.102 -u msfadmin -P wordlists/ftp.txt -M ftp
  ```
- **Resultado:** Acesso obtido com sucesso usando senha fraca.
- **Mitigação:** Desabilitar contas padrão, aplicar políticas de senha forte, limitar tentativas de login.

### 2. Automação de Login Web (DVWA)

- **Configuração:** DVWA em modo "Low"
- **Comando:**
  ```bash
  medusa -h 192.168.56.102 -u admin -P wordlists/web.txt -M http -m FORM:/dvwa/login.php
  ```
- **Resultado:** Login automatizado com sucesso.
- **Mitigação:** Implementar CAPTCHA, bloqueio após tentativas falhas, autenticação multifator.

### 3. Password Spraying em SMB

- **Enumeração de usuários:**
  ```bash
  enum4linux -U 192.168.56.102
  ```
- **Ataque:**
  ```bash
  medusa -h 192.168.56.102 -U wordlists/users.txt -p 123456 -M smbnt
  ```
- **Resultado:** Acesso obtido com senha comum.
- **Mitigação:** Monitoramento de logs, senhas fortes, autenticação baseada em certificados.

---

## 📁 Estrutura do Repositório

```
.
├── images/                  # Capturas de tela dos testes
├── scripts/                 # Scripts auxiliares (se houver)
├── wordlists/               # Wordlists utilizadas nos testes
│   ├── ftp.txt
│   ├── web.txt
│   └── users.txt
└── README.md                # Documentação principal
```

---

## ✅ Conclusões

- Ataques de força bruta são simples, mas eficazes contra sistemas mal configurados.
- Medusa é uma ferramenta poderosa para testes de penetração automatizados.
- A documentação clara dos testes é essencial para análise e mitigação de riscos.

---

## 📎 Recursos Complementares

- [Kali Linux – Site Oficial](https://www.kali.org/)
- [DVWA – Damn Vulnerable Web Application](http://www.dvwa.co.uk/)
- [Medusa – Documentação](https://tools.kali.org/password-attacks/medusa)
- [Nmap – Manual Oficial](https://nmap.org/book/)

---

## 🚀 Autor

Desenvolvido como parte do desafio da [DIO](https://www.dio.me/).  
Compartilhado como portfólio técnico no GitHub.

