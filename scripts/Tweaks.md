## Remove popup proxy

```bash
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.UserNotificationCenter.plist
```

## Time configuration

```bash
systemsetup -settimezone Pacific/Auckland
systemsetup -setnetworktimeserver time.example.com
```

## Setup proxy.pac proxy script

```bash
networksetup -setautoproxyurl Wi-Fi http://proxy.example.com/proxy.pac
```

## Clear bash history

```bash
history -c
```