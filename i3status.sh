#!/bin/sh

i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && while :  
do
  read line
  echo ",[{\"full_text\":\"$(ipsec-status) \" },${line#,\[}" || exit 1
  #echo "$line" || exit 1
done)
