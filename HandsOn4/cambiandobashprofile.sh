#!/bin/bash
#: Description : This script show you how to change the bash rc

#Ingresando al bashrc
cd
gedit .bashrc

#Imprimiendo el nombre
figlet Jose Acosta 

#Agregando una dirección al path 
PATH="/your/script/dir:${PATH}"
export PATH

