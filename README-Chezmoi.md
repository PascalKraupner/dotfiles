# 🛠️ Dotfiles – Managed with chezmoi + Bitwarden

This is my personal dotfiles setup, using [chezmoi](https://www.chezmoi.io/) for configuration management and [Bitwarden](https://bitwarden.com/) for secrets.

---

## 🚀 One-liner install (for Arch Linux)

```bash
sudo pacman -Syu --noconfirm git && sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply yourusername
```

add also oneline for mac say you need to install brew before

> 🔐 If you're using Bitwarden secrets, don't forget to unlock it first:

```bash
export BW_SESSION="$(bw unlock --raw)"
```

---

## 📁 What This Repo Manages

- `~/.config/hypr/` — Hyprland config
- Other dotfiles coming soon (e.g. zsh, nvim, etc.)
- Software install (optional) via `run_once_after_00-install.sh.tmpl`
- Hyprland auto-reload after config changes

---

## 🔐 Secrets with Bitwarden

Secrets are **not stored** in this repo. They’re pulled at runtime using Bitwarden CLI:

Example template in `hyprland.conf.tmpl`:

```ini
monitor={{ bitwarden `field` `monitor` (bitwardenItem `Hyprland Config`) }}
```

---

## ➕ Adding New Config Files

1. Add the file/folder:

```bash
chezmoi add ~/.config/appname
```

2. Edit it to template secrets or variables:

```bash
chezmoi edit ~/.config/appname/config.conf
```

3. Apply to see the result:

```bash
chezmoi apply
```

4. Commit changes:

```bash
chezmoi cd
git add .
git commit -m "Add appname config"
git push
```

---

## 📦 Install Software (One-time)

Add a script in your repo:

```bash
~/.local/share/chezmoi/run_once_after_00-install.sh.tmpl
```

Example:

```bash
#!/bin/bash
sudo pacman -S --noconfirm zsh vim chezmoi bw git
```

ChezMoi will run it only once after applying.

---

## 🧼 Safe Practices

- Never hardcode secrets.
- Use Bitwarden or environment variables in templates.
- Use `run_once_` for installs or one-time setup logic.

---

## 💬 Questions?

Open an issue or fork the repo. Inspired by the simplicity of `chezmoi`.
