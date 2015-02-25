
## Set `Display login window as:`

#### - List of users
```bash
defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool FALSE
```

#### - Name and password
```bash
defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool TRUE
```

## Time configuration

```bash
systemsetup -settimezone Pacific/Auckland
systemsetup -setnetworktimeserver time.example.com
```

## Proxy settings
#### - Automatic Proxy Configuration (aka proxy.pac)
```bash
networksetup -setautoproxyurl Wi-Fi http://proxy.example.com/proxy.pac
```
