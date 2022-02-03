# Backup-Diary
  
  O script a seguir tem o objetivo de efetuar os backups dos diretórios selecionados, a fim de facilitar a automatização de rotinas dentro de um servidor.

![](https://linuxengineering.files.wordpress.com/2014/08/linux_inside_tux.png)

## Criar Ponto de Montagem de unidade Removivel
  
  Deve ser criado um ponto de montagem da unidade removivel em: ***mnt/backup***.
  Para isso efetuar o comando ***mkdir /mnt/backup***
  
## Comandos para criação do ponto de montagem
  
  **lsblk** : Irá listar as discos do seu sistema <br>
  **mount /dev/sua_unidade /mnt/backup** : Irá Montar a unidade removivel dentro do caminho absoluto onde foi definido no script para efetuar os backups
## Automatização com CRON
  
  Com o script é possivel efetuar a automatização com CRON, https://man7.org/linux/man-pages/man5/crontab.5.html
