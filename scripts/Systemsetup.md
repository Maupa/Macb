## Install package
```bash
/usr/sbin/installer -pkg "package.pkg" -target /
```

## Install packages from directory
```bash
DIR="/dir/"
cd $DIR
for f in *.pkg
do
    echo "   Installing $f"$'\n'
    /usr/sbin/installer -pkg "$f" -target /
    echo "   Done."$'\n\n'
done
```