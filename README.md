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





















<div align="center">
  <img src="/logo-compass.png" width="250px" margin-top="80px">
</div>
