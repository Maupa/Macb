## Change password(will not update keychain)

```bash
dscl . -passwd /Users/admin "id10t"
```

## Login

```bash
NAME="admin"
PASS="id10t$"
osascript -e 'tell application "System Events" to keystroke "'$NAME'"';
osascript -e 'tell application "System Events" to keystroke tab';
osascript -e 'tell application "System Events" to keystroke "'$PASS'"';
osascript -e 'tell application "System Events" to keystroke return';
```

## Remove all user folders except admin

```bash
mv /Users/admin /admin
rm -R /Users/*
mv /admin /Users/admin
```