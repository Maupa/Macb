/usr/sbin/lpadmin -p Printer-01 -L "Staffroom" -E -v smb://print.example.com/Printer-01 -P "/Library/Printers/PPDs/Contents/Resources/Driver.gz" #Add printer

/usr/sbin/lpadmin -d Printer-01 #set printer as default
