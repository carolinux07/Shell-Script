# Shell-Script
Scripts em Shell Script criados para automatizar tarefas. Esta demanda surgiu pela necessidade constante de inserção de equipamentos de rede nas configurações do Nagios e como a equipe de Telecom sempre enviava as informações no mesmo padrão, pensamos na em gerar algo que lê-se esse arquivo e criasse tudo, analisando o cenário passado, ou seja, dependendo das informações passadas as dependências mudariam.

-> gera_conf_lj_nagios:

Script para automatizar a criação dos arquivos de configuração do Nagios (links, firewall e switchs). É feita a leitura de um arquivo csv e apartir daí o script valida as informações (por exemplo, se o IP possui um formaro válido) e cria os arquivo de configuração, levando também em consideração alguns critérios de dependência (aqui utilizamos o recurso parents do Nagios) e condições de existência ou não de certos objetos.

Exemplo de csv
LOJAS;SERVIDOR;LINK A LAN;LINK B LAN;LINK A WAN;LINK B WAN;FIREWALL INT;FIREWALL EXT;SWITCH 1;SWITCH 2;SWITCH 3;SWITCH 4;SWITCH 5;SWITCH 6;SWITCH 7;SWITCH 8
loja0001;111.111.111.111;222.222.222.222;333.333.333.333;444.444.444.444;555.555.555.555;NÃO POSSUI;NÃO POSSUI;666.666.666.666;777.777.777.777;888.888.888.888;NÃO POSSUI;NÃO POSSUI;NÃO POSSUI;NÃO POSSUI;NÃO POSSUI
