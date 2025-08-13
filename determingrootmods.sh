#!/bin/sh

old_uit=''
#http://ubuntuforums.org/showthread.php?t=1972256
sort -t: -k3 -n passwd | (IFS=:; while read name x uid _; do
 if [ "$uid" != "$old_uid" -a "$old_uid" != '' ]; then
   echo "$old_uid: $users"
   users="$name"
 else
   if [ -z "$users" ];  then
     users="$name"
   else
     users="$users,$name"
   fi
 fi
 old_uid="$uid"
done; echo "$old_uid: $users")