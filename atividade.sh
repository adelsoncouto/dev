#!/data/data/com.termux/files/usr/bin/bash

DIA=`date | awk '{print "atividade_"$1"_"$3"_"$2"_"$6".log"}'`

echo -e "$(date)\t$1" >> $DIA
