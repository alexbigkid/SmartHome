#!/bin/bash

# HOST=ABKweb
# LCL_SSH_PORT=13306

# exit error codes
ERROR_CODE_SUCCESS=0
ERROR_CODE_GENERAL_ERROR=1
ERROR_CODE_MISUSE_OF_SHELL_BUILT_INS=2
ERROR_CODE_NOT_VALID_NUM_OF_PARAMETERS=3
ERROR_CODE_NOT_VALID_PARAMETER=4
ERROR_CODE=$ERROR_CODE_SUCCESS


# echo "starting ssh on $LCL_SSH_PORT:127.0.0.1:3306 $HOST"
# ssh -f -N -T -M -L $LCL_SSH_PORT:127.0.0.1:3306 $HOST
# echo "ssh connection opened with $?"
# ERROR_CODE=$?

if [ "$ERROR_CODE" -eq $ERROR_CODE_SUCCESS ]; then
    echo "+----------------------------------------+"
    echo "| Flyway Schema Version Information      |"
    echo "+----------------------------------------+"
    flyway -configFiles=flywayDbConnectionLocal.conf -configFiles=abkcompa_shDev.conf info

    echo "+----------------------------------------+"
    echo "| MySQL Tables                           |"
    echo "+----------------------------------------+"
    mysql --defaults-file=mysqlDbConnectionLocal.conf abkcompa_shDev -e 'show tables;'
    #mysql --defaults-file=mysqlDbConnectionLocal.conf abkcompa_shDev -e 'describe flyway_schema_history;'
fi

# echo "closing ssh connection ..."
# ssh -T -O "exit" $HOST
# echo "ssh connection closed with $?"

if [ "$ERROR_CODE" -ne $ERROR_CODE_SUCCESS ]; then
    echo "\$ERROR_CODE = $ERROR_CODE"
    exit $ERROR_CODE
fi
echo "\$? = $?"
exit $?
