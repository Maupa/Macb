#!/bin/bash 

DOMAIN="example.com"
ADUSERNAME="ADUSERNAME"
ADPASS="PASSWORD"

# Set HostName, LocalHostName, and ComputerName to M$SN
CNAME=`scutil --get ComputerName`
echo "Adding "$CNAME

scutil --set HostName $CNAME
scutil --set LocalHostName $CNAME
scutil --set ComputerName $CNAME

# Add computer to Active Directory
echo "Adding computer to Active Directory"

echo "y" | dsconfigad -add $DOMAIN -username $ADUSERNAME -password $ADPASS

