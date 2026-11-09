# Dotfiles

Personal configuration files. Each real file lives in this repo; the home directory holds a symlink to it, so editing either path edits the repo copy.

## Structure

```
dotfiles/
  .tmux.conf
  zsh/          .zshrc .zprofile .zshenv .p10k.zsh
  bash/         .bash_profile
  ghostty/      config
  git/          .gitconfig
  hammerspoon/  init.lua
  wallpapers/   Cloudsnight.jpg
  macos.md      macOS settings to apply by hand
```

## Setup on a new machine

1. Clone:

```
git clone git@github.com:branow/dotfiles.git ~/dotfiles
```

2. Create the symlinks (one line at a time):

```
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/.zprofile ~/.zprofile
ln -s ~/dotfiles/zsh/.zshenv ~/.zshenv
ln -s ~/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/bash/.bash_profile ~/.bash_profile
mkdir -p ~/.config/ghostty
ln -s ~/dotfiles/ghostty/config ~/.config/ghostty/config
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
mkdir -p ~/.hammerspoon
ln -s ~/dotfiles/hammerspoon/init.lua ~/.hammerspoon/init.lua
```

If a tool installer already created one of these files, delete it first (`rm ~/.zshrc`), then run its `ln -s` line.

3. Apply `macos.md`.

`.gitconfig` includes `~/.gitconfig.local` for machine-specific settings; that file is not in this repo.

## Updating

Edit the file at either path, then:

```
cd ~/dotfiles
git add -A
git commit -m "Update <tool> config"
git push
```

Reload tmux inside a session: `tmux source-file ~/.tmux.conf`.
