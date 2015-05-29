## Bind to AD

```bash
DOMAIN="example.com"
ADUSERNAME="admin"
ADPASS="id10t"

# Set HostName, LocalHostName, and ComputerName to M$SN
CNAME=`scutil --get ComputerName`
echo "Adding "$CNAME

scutil --set HostName $CNAME
scutil --set LocalHostName $CNAME
scutil --set ComputerName $CNAME

# Add computer to Active Directory
echo "Adding computer to Active Directory"

echo "y" | dsconfigad -add $DOMAIN -username $ADUSERNAME -password $ADPASS
```

## Unbind from AD

```bash
ADUSERNAME="admin"
ADPASS="id10t"

echo "y" | dsconfigad -force -remove -u $ADUSERNAME -p $ADPASS
```

## Bind to ODS

```bash
DOMAIN="ods.example.com"

echo "y" | dsconfigldap -v -a $DOMAIN -n o$DOMAIN
dscl /Search -create / SearchPolicy CSPSearchPath
sleep 10
dscl /Search -append / CSPSearchPath /LDAPv3/$DOMAIN
```

## Unbind from ODS

```bash
DOMAIN="ods.example.com"

/usr/sbin/dsconfigldap -f -v -r $DOMAIN
```