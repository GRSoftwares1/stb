#!/bin/bash

# Atualiza a lista de pacotes e instala o Nginx
sudo apt-get update -y
sudo apt install nginx -y

# Lista as configurações de firewall e permite o tráfego HTTP do Nginx
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status


# Instalação de pacotes adicionais
sudo apt-get install bind9 php7.2-fpm php7.2-common php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-intl php7.2-mysql php7.2-cli php7.2-zip php7.2-curl -y

# Configuração dos arquivos e serviços
sudo cp -r /home/stb/nginx/* /etc/nginx/
sudo cp -r /home/stb/bdstb/* /var/www/html/
sudo rm /var/www/html/index.html
sudo cp -r /home/stb/bdstb/* /usr/share/nginx/html/
sudo rm /usr/share/nginx/html/index.html

# Reinicia os serviços Nginx e Bind 9
sudo service nginx restart
sudo service bind9 restart

echo "Configuração concluída!"