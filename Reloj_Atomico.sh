#!/bin/bash
# ------------------------------------------------------------------
# Title                 Reloj Atomico script
# Description           This is a script which give you always the time 
# Author                Jose Acosta 
# Creation Date 27-Jun-2015
# ------------------------------------------------------------------


while (true); do clear ; curl http://time.is/ -s | grep clock0 | grep togglesimple | sed 's/.*id="twd">//g' | sed 's/<\/div>.*//g' | figlet; sleep 1 ; done


