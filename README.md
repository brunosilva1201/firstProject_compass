# 🖥️ Atividade do PB da Compass.UOL

<div align="center">
  <img src="/logo-compass.png" width="350px">
</div>

## Tecnologias usadas
- WSL (Windows Subsystem for Linux)
- Ubuntu Linux
- AWS EC2
- Nginx
- Shell Script

## Requisitos AWS:
- Criar 1 instância EC2 com o sistema operacional Linux
- Liberar as portas de comunicação para acesso público: (22/TCP, 80/TCP, 443/TCP).

## Requisitos no Linux:
- Configurar hostname
- Instalar GIT
- Subir um nginx no servidor - o nginx deve estar online e rodando;
- Criar um script que valide se o serviço nginx esta online ou offline
- Alterar data e hora para região do Brasil (No meu caso São Paulo)
- O script deve conter - Data HORA + nome do serviço + Status + mensagem personalizada de ONLINE ou OFFLINE
- O script deve gerar 2 arquivos de saída: 1 para o serviço online e 1 para o serviço
OFFLINE;
- Preparar a execução automatizada do script a cada 5 minutos.

# Guia de Instalação e Configuração

## Parte 1: Instalar o WSL

1. **Ativar o WSL**:
   - Abra o PowerShell como Administrador.
   - Execute o seguinte comando para habilitar o WSL:
     ```powershell
     wsl --install
     ```
   - Isso irá instalar o Ubuntu por padrão. Você pode escolher outra distribuição mais tarde, se preferir.

2. **Verificar a Instalação**:
   - Após a instalação, reinicie o computador.
   - Abra o PowerShell novamente e digite:
     ```powershell
     wsl --list --online
     ```
   - Isso mostrará as distribuições disponíveis para instalação.

3. **Instalar o Ubuntu**:
   - Execute o comando:
     ```powershell
     wsl --install -d Ubuntu-20.04
     ```
   - Siga as instruções para concluir a instalação.

## Parte 2: Instalar SSH e exemplo conexão

1. **Instalar o OpenSSH**:
   - No Ubuntu (WSL), instale o OpenSSH:
     ```bash
     sudo apt update
     sudo apt install openssh-client
     ```

2. **Conectar via SSH**:
   - Utilize o comando SSH para conectar-se à máquina remota:
     ```bash
     ssh usuario@ip_da_maquina_remota
     ```
   - Substitua `usuario` pelo seu nome de usuário e `ip_da_maquina_remota` pelo IP ou hostname da máquina remota.

## Alterar Fuso Horário
- Utilize o comando
     ```bash
    timedatectl set-timezone America/Sao_Paulo
    - Altera timezone para fuso horário São Paulo

## Parte 3: Clonar um Projeto do GitHub

1. **Instalar o Git**:
   - No Ubuntu (WSL), instale o Git:
     ```bash
     sudo apt update
     sudo apt install git
     ```

2. **Clonar o Repositório**:
   - Navegue em seu diretório linux onde deseja clonar o repositório:
     ```bash
     cd /caminho/para/o/diretorio
     ```
   - Execute o comando para clonar o repositório:
     ```bash
     git clone https://github.com/usuario/projeto.git
     ```
   - Substitua `https://github.com/usuario/projeto.git` pela URL do repositório.

## Parte 4: Instalar o Nginx

1. **Instalar o Nginx**:
   - No Ubuntu (WSL), instale o Nginx:
     ```bash
     sudo apt update
     sudo apt install nginx
     ```

2. **Iniciar o Serviço Nginx**:
   - Inicie o Nginx:
     ```bash
     sudo systemctl start nginx
     ```
   - Verifique o status do Nginx:
     ```bash
     sudo systemctl status nginx
     ```

## Parte 5: Adicionar uma Linha no Crontab do Ubuntu

1. **Editar o Crontab**:
   - Abra o crontab para edição:
     ```bash
     crontab -e
     ```

2. **Adicionar a Linha de Comando**:
   - Adicione a seguinte linha ao crontab para executar um script a cada 5 minutos:
     ```bash
     */5 * * * * /home/ubuntu/estagio_compassuol/script-nginx.sh
     ```
   - Salve e feche o editor.

<div align="center">
  <img src="/logo-compass.png" width="250px" margin-top="80px">
</div>
