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

## Set default paper size to A4

```bash
defaults write org.cups.PrintingPrefs DefaultPaperID iso-a4
```
Other options:
 - US Letter - `na-letter`
 - US Legal - `na-legal`
 - A4 - `iso-a4`
 - A5 - `iso-a5`
 - JIS B5 - `jis-b5`
 - B5 - `iso-b5`
 - Envelope #10 - `na-number-10-envelope`
 - Envelope DL - `iso-designated`
 - Tabloid - `tabloid`
 - A3 - `iso-a3`
 - Tabloid Oversize - `arch-b`
 - ROC 16k - `ROC 16k`
 - Envelope Choukei 3 - `Envelope Choukei 3`
 - Super B/A3 - `super-b`
 

