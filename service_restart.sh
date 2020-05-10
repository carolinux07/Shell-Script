#!/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin

# Criacao do arquivo de controle, x min no passado
touch -d '-20 min' /var/log/arq_controle

# Verifica se o log é mais antigo que o arquivo de controle. Se sim: reinicia o serviço. Se não: Só escreve no log
if [ /var/log/servico-out.log -ot /var/log/arq_controle ]
        then
                /etc/rc.d/init.d/servico stop >> /var/log/log_restart.log
                sleep 2
                /etc/rc.d/init.d/servico start >> /var/log/log_restart.log
                sleep 2
                /etc/rc.d/init.d/servico status >> /var/log/log_restart.log
        else
                echo "Log recente" >> /var/log/log_restart.log
fi
