#!/usr/bin/env sh

#Author Guilherme Henrique de S. Jesus

############################
# SCRIPT DE BACKUP COMPLETO
############################

#Variavel do Arquivo que será efetuado o backup

BKP_PATH="/home/user" #Nesse local poderá ser adicionado os Diretórios a fazer backup

#Variável Diretório Final

BKP_STORAGE="/mnt/backup"

#Nome e formato do arquivo

DATE_FORMAT=$(date "+%d-%m-%Y")
FINAL_ARCHIVE="backup-$DATE_FORMAT.tar.gz"

#Log Armazenamento

LOG_FILE="/var/log/daily-backup.log"

##########################
#TESTE
#########################

#Checando se o dispositivo está montado

if  ! mountpoint -q -- $BKP_STORAGE; then
    print "[$DATE_FORMAT] DEVICE IS NOT MOUNTED IN : $BKP_STORAGE \n" >>  $LOG_FILE
    exit 1
fi

#######################
#INICIO BACKUP
#######################

if tar -czSpf "$BKP_STORAGE/$FINAL_ARCHIVE" "$BKP_PATH"; then
   printf "[$DATE_FORMAT] BACKUP SUCESS.\n" >> $LOG_FILE
else
   printf "[$DATE_FORMAT] BACKUP ERRO IN ACTION \n" >> $LOG_FILE
fi

#Exclusão de Arquivos de mais de 10 dias

find $BKP_STORAGE -mtime +10 -delete
