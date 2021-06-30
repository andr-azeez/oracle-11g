#!/bin/bash 

sqlplus /nolog << EOF 
CONNECT SYS/oracle AS SYSDBA; 
startup; 
exit;
EOF
