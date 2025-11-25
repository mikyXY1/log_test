#!/usr/bin/bash


echo "-------"

name="server_log.txt"

echo "-------"
for type_message in "INFO" "WARNING" "ERROR" #vyčet zpráv podle typu
do
    count=$(cat ${name} | grep -E "] ${type_message}" | wc -l)   #počítání výskytů podle typu zprávy
    echo "Zpravy typu: ${type_message} - pocet: ${count}"        #výpis počtu výskytů podle typu zprávy  
done

echo "-------"
seznam=$(cat ${name} | grep -E "logged in" | sed -e "s/.*  User '\(.*\)'.*/\1/g")  #výpis uživatelů, kteří se přihlásili
echo "Seznam všech uživatelů, kteří se přihlásili:"
echo "${seznam}"
#echo -e "Seznam všech uživatelů, kteří se přihlásili: \n${seznam}"