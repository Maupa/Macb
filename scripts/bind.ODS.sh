ODS="ods.example.com"
echo "y" | dsconfigldap -v -a $ODS -n o$ODS
dscl /Search -create / SearchPolicy CSPSearchPath
sleep 10
dscl /Search -append / CSPSearchPath /LDAPv3/$ODS