#!/bin/sh

PID_FILE=/home/engines/run/pid\r\nexport PID_FILE\r\n. /home/engines/functions/trap.sh\r\n\r\nstartup_complete\r\n\r\nc=1\r\n\r\nwhile ! test -f /home/engines/run/flags/sig_term -o -f /home/engines/run/flags/sig_quit\r\n\tdo \r\n      sleep 3600 &\r\n      echo $! > $PID_FILE\r\n      wait\r\n     exit_code=$?\t\r\ndone\r\n\r\nshutdown_complete
