#!/bin/sh

#. /home/engines/functions/params_to_env.sh\r\n#params_to_env\r\n . /home/engines/functions/checks.sh\r\n\r\nrequired_values=\"parent_engine service_name user group\"\r\ncheck_required_values\r\n\r\nexport parent_engine\r\nexport service_name\r\nexport user\r\nexport group\r\nexport grp_write\r\n\r\nsudo -n /home/engines/scripts/services/sudo/_update_service.sh
