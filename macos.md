# macOS settings

Run each line in the terminal on a new Mac.

## Appearance

```
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
```

## Dock: right side, autohide, size 46

```
defaults write com.apple.dock orientation -string right
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 46
killall Dock
```

Pinned apps, in order (drag them in): Brave Browser, Slack, Visual Studio Code, Ghostty, Postman, OBS, Apps, Notes, OrbStack, Google Chrome, DBeaver, Passwords.

## Keyboard

System Settings > Keyboard > Input Sources > Edit: add Ukrainian - PC, keep ABC.

## Wallpaper

```
mkdir -p ~/Pictures/Wallpapers
cp ~/dotfiles/wallpapers/Cloudsnight.jpg ~/Pictures/Wallpapers/
wall Cloudsnight
```

## Hammerspoon

Open Hammerspoon once, allow Accessibility in System Settings > Privacy & Security, enable "Launch at login". Cmd+Alt+<key> opens apps (see `hammerspoon/init.lua`).
