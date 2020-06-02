#!/bin/sh

#. /home/engines/functions/params_to_env.sh\r\n#params_to_env
. /home/engines/functions/checks.sh\r\nexport parent_engine
export container_type\r\nexport service_name\r\nexport service_handle\r\nexport user\r\nexport group\r\n\r\nif test -z $voltype\r\n then\r\n  voltype=dir\r\nfi

#FIX ME add more values to required
required_values=\"parent_engine \"\r\n  check_required_values\r\n\r\nif  ! test -z $home_type \r\n  then\r\n   if test $home_type = seperate\r\n    then\r\n     echo $homes | sudo -n /home/engines/scripts/services/sudo/_create_homes.sh\r\n   elif test $home_type = all\r\n    then\r\n     sudo -n /home/engines/scripts/services/sudo/_create_all_homes.sh\r\n   else\r\n    echo \"Unknown type\"  \r\n    exit 127\r\n   fi  \r\nelif test -z $is_secret\r\n then\r\n  required_values=\"parent_engine service_name user group\"\r\n  check_required_values\r\n    volume_src=`echo $volume_src | sed \"s/\\.\\.//g\"`
# echo $volume_src | grep \"^/var/lib/engines/$container_type\" >/dev/null\r\n    #if test $? -ne 0\r\n     #then\r\n      #echo \"Invalid volume:$volume_src\"\r\n      #exit 2\r\n    #fi      \r\n  sudo -n /home/engines/scripts/services/sudo/_create_volume.sh\r\nelse\r\n   sudo -n /home/engines/scripts/services/sudo/_create_secret.sh $length\r\nfi\r\n\r\nif test $? -eq 0\r\n then \r\n\techo \"Success\"\r\n    exit 0\r\nfi\r\nexit 127
