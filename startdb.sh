#!/bin/bash 

cp -R -n /u01/app/oracle_bkp/* /u01/app/oracle
chown -R oracle:dba /u01/app/oracle
chmod -R 6751 /u01/app/oracle

# cp -R -n /u01/app/oracle_bkp/* 

sqlplus /nolog << EOF 
CONNECT SYS/oracle AS SYSDBA; 
startup; 
exit;
EOF
