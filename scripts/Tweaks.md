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

## Stop kids from playing with volume

```bash
defaults write -g "com.apple.sound.beep.feedback" -int 0
defaults write "com.apple.systemsound" "com.apple.sound.uiaudio.enabled" -int 0
killall -HUP SystemUIServer
```
