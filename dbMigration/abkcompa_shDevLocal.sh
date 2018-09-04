#!/bin/bash

# HOST=ABKweb
# LCL_SSH_PORT=13306

LCL_MYSQL_DIR="/usr/local/var/mysql"
LCL_DB_NAME="abkcompa_shDev"

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

echo ""

if [ ! -d $LCL_MYSQL_DIR/$LCL_DB_NAME ]; then
    mysql --defaults-file=mysqlDbConnectionLocal.conf -e "CREATE DATABASE $LCL_DB_NAME CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
    ERROR_CODE=$?
fi



if [ "$ERROR_CODE" -eq $ERROR_CODE_SUCCESS ] && [ -d $LCL_MYSQL_DIR/$LCL_DB_NAME ]; then
    echo "+----------------------------------------+"
    echo "| MySQL check                            |"
    echo "+----------------------------------------+"
    mysql --defaults-file=mysqlDbConnectionLocal.conf $LCL_DB_NAME -e 'show tables;'

    echo "+----------------------------------------+"
    echo "| Flyway schema version before migration |"
    echo "+----------------------------------------+"
    flyway -configFiles=flywayDbConnectionLocal.conf -configFiles=$LCL_DB_NAME.conf info
    echo "+----------------------------------------+"
    echo "| Flyway schema migration                |"
    echo "+----------------------------------------+"
    flyway -configFiles=flywayDbConnectionLocal.conf -configFiles=$LCL_DB_NAME.conf migrate
    ERROR_CODE=$?
    echo "+----------------------------------------+"
    echo "| Flyway schema version after migration  |"
    echo "+----------------------------------------+"
    flyway -configFiles=flywayDbConnectionLocal.conf -configFiles=$LCL_DB_NAME.conf info
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
