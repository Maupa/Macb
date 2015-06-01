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
killall -HUP SystemUIServer
```

## Enable remote VNC access

```bash
sudo  /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -clientopts -setvnclegacy -vnclegacy yes -clientopts -setvncpw -vncpw mypasswd -restart -agent -privs -all
```