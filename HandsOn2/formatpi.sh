#!/bin/bash
#: Description : This script gives to the file pi.txt the format 
sed -i -E 's/<BR>//g' pi.txt
sed -i -E 's/<\/center><\/BODY><\/HTML>//g' pi.txt
sed -i -E 's/<HTML><TITLE>Pi - 10 Million Digits \@ http:\/\/Pi\.Karmona\.com<\/TITLE><BODY>//g' pi.txt
sed -i -E 's/<CENTER><B>Pi - 10 Million Digits<\/B><B>//g' pi.txt
sed -i -E 's/<\/B>//g' pi.txt
sed -i -E 's/<B>//g' pi.txt
sed -E 's/(.{20})/\1\n/g' pi.txt > PIslices20.dat

