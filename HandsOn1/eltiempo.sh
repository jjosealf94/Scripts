#!/bin/bash
#: Description : Busca en la portada del tiempo la(s) palabra(s) de entrada
echo "La busqueda en la portada de hoy del tiempo dio:"
curl http://www.eltiempo.com/ -s | grep "\<h2 itemprop=\"name\"" |sed -e 's/.*href.*"//g' | sed -e 's/<.*//g' |  grep -i -w "$1"
