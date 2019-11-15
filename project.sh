#!/bin/bash
dt=$(date +%Y_%m_%d_%T)
out=output-$dt.log
echo "Execution de fichier Jar dans un script Shell" >>$out
echo "Execution de fichier Jar dans un script Shell" 
echo "=======================INPUT=============================" >> $out

echo "=======================INPUT============================="

echo "la saisir de votre nom" >> $out

echo "Écrivez votre nom  :"
read nom 
set $nom >> $out
     
if [ $# = 1 ] 
then	  
		  
echo "=======================EXECUTION=========================">> $out
echo "=======================EXECUTION========================="
echo " la sortie de fichier jar est : " >> $out   
     java -jar ghoulem-1.0-SNAPSHOT.jar $nom   >> $out 
	 echo " la sortie de fichier jar est : "
     java -jar ghoulem-1.0-SNAPSHOT.jar $nom  
echo "=======================OUTPUT IN VAR======================">> $out
echo "=======================OUTPUT IN VAR======================"
VAR=$(java -jar ghoulem-1.0-SNAPSHOT.jar $nom )
echo "bonjour Mr " $VAR   >> $out
echo "bonjour Mr " $VAR  

else

echo "=======================CONTROLE INPUT=========================">> $out

echo "=======================CONTROLE INPUT========================="

        echo "votre nom est invalide !">> $out
		
		  echo "votre nom est invalide !"
		   
fi

read -p "..."
