#!/bin/sh

echo chown ${user}.${group} /var/fs/local/${parent_engine}/${service_name} >/tmp/cmd\r\nchown ${user}.${group} /var/fs/local/${parent_engine}/${service_name}\r\n if ! test -z \"$grp_write\"\r\n  then\r\n   if test $grp_write = 'y'\r\n    then\r\n     chmod g+w /var/fs/local/${parent_engine}/${service_name}\r\n   elif test $grp_write = 'n'\r\n    then\r\n     chmod g-w /var/fs/local/${parent_engine}/${service_name}\r\n   fi\r\n fi
