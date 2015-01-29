#!/bin/bash 

ADUSERNAME="ADUSERNAME"
ADPASS="PASSWORD"

echo "y" | dsconfigad -force -remove -u $ADUSERNAME -p $ADPASS