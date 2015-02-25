## Remove popup proxy

```bash
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.UserNotificationCenter.plist
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
