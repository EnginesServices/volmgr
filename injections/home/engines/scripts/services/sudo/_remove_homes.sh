#!/bin/sh
for user in `cat -` do
if ! test -z $user
 then  
  if ! test -z $parent_engine
   then
     rm -r /var/lib/engines/home/$user/$parent_engine
  else
   echo "No Parent var"   
  fi
else
 echo "No user var"  
fi

done 

