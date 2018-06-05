#!/bin/bash
FILE="${CATALINA_HOME}/repository/okmdb.properties"

if [ -f "$FILE" ];
then
   echo "File $FILE exist. Don't create a DB."
   sed -i 's/hibernate.hbm2ddl=create/hibernate.hbm2ddl=none/g' ${CATALINA_HOME}/OpenKM.cfg
else
   echo "File $FILE does not exist. Create a DB."
fi

${CATALINA_HOME}/bin/catalina.sh run