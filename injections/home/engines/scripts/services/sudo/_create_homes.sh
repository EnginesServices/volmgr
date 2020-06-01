#!/bin/sh
for user in `cat -` 
do
 if ! test -d  /var/fs/homes/$user
  then 
  continue
 fi 
 mkdir /var/fs/homes/$user/$parent_engine
 chmod g+rwx /var/fs/homes/$user/$parent_engine
 chgrp 11111 /var/fs/homes/$user/$parent_engine
done 

