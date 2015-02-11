## Add printer

```bash
/usr/sbin/lpadmin -q Netname -p Showname -L "Location" -E -v smb://print.example.com/Printer-01 -P "/Library/Printers/PPDs/Contents/Resources/Driver.gz"
```

## Set printer as default

```bash
/usr/sbin/lpadmin -d Printer-01
```

## Remove printer

```bash
/usr/sbin/lpadmin -x Printer-01
```

## Remove printers

```bash
lpstat -p | awk '{print $2}' | while read printer
do
    echo "Deleting Printer:" $printer
    /usr/sbin/lpadmin -x $printer
done
```


