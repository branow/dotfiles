# Dotfiles Repository

This repository stores my personal configuration files (dotfiles), such as `tmux`, shell configs, and other tools.
The goal is to keep them version-controlled and easily synced across machines.

---

## 🧠 How it works

Some programs (like `tmux`) expect their config files in specific locations, for example:

* `~/.tmux.conf`

Instead of storing the real file there, I:

1. Keep the **actual file inside this repo**
2. Create a **symlink (symbolic link)** in the home directory

Example:

```
~/.tmux.conf → ~/dotfiles/tmux.conf
```

So when `tmux` reads `~/.tmux.conf`, it actually loads the file from this repository.

---

## 📁 Structure

```
dotfiles/
  tmux.conf
  README.md
```

(Will expand as more configs are added.)

---

## 🔧 Setup on a new machine

### 1. Clone the repository

```bash
git clone <your-repo-url> ~/dotfiles
```

### 2. Create symlink for tmux

```bash
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
```

---

## 🔄 Updating config

Edit the file normally (either path works):

```bash
nano ~/.tmux.conf
# or
nano ~/dotfiles/tmux.conf
```

Then commit and push:

```bash
cd ~/dotfiles
git add tmux.conf
git commit -m "Update tmux config"
git push
```

---

## 🔁 Reload tmux config

Inside a tmux session:

```bash
tmux source-file ~/.tmux.conf
```

---

## 🔍 Verify symlink

```bash
ls -l ~/.tmux.conf
```

Expected output:

```
.tmux.conf -> /Users/<you>/dotfiles/tmux.conf
```

---

## ⚠️ Notes

* If `~/.tmux.conf` already exists, remove it before creating the symlink:

  ```bash
  rm ~/.tmux.conf
  ```
* Never initialize a Git repository in the home directory (`~`)

---

## 💡 Future additions

* `.zshrc`
* `.gitconfig`
* Neovim config
* Other tool configs

All managed the same way: **store here → symlink to home directory**

---
