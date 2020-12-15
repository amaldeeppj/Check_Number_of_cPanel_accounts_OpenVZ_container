#!/bin/bash

for i in `cat /proc/vz/veinfo | awk '{print $1}'|egrep -v '^0$'`; do 

    if [ -f /vz/root/$i/etc/trueuserdomains ] ; then 
        echo -e `vzlist | grep $i | awk '{print $5}' ` "\t"  `wc -l  /vz/root/$i/etc/trueuserdomains | awk '{print $1}' `  
    fi 
done
