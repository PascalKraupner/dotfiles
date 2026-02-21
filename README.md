# 🛠 Linux Setup

A reproducible Arch Linux setup using [Timeshift](https://github.com/linuxmint/timeshift) for system snapshots and [chezmoi](https://www.chezmoi.io) for managing both public and private dotfiles.

---

## ⚡ Quick Setup Steps

After completing a basic Arch installation:

---

### 1. Install Required Tools

```bash
sudo pacman -S git chezmoi timeshift bitwarden-cli
```

---

### 2. Configure Timeshift (GUI)

```bash
sudo timeshift-launcher
```

1. Select **BTRFS** as the snapshot type
2. Choose your **root partition** (e.g. `/dev/nvme0n1p2`)
3. Configure your snapshot schedule (daily/weekly/etc.)
4. On the final page of the setup wizard, enable **Include @home subvolumes in backups**
5. Finish setup

---

### 3. Create Your First Snapshot (GUI)

Launch Timeshift again to create your first snapshot:

```bash
sudo timeshift-launcher
```

- Click `Create`
- Add a comment like "Initial full-system snapshot"

---

### 4. (Optional) Restore a Snapshot with `/home`

```bash
sudo timeshift-launcher
```

- Select your desired snapshot
- Choose to restore also **@home subvolumes**
- Click `Next` and complete the process
- Reboot into the restored state

---

### 5. Apply Dotfiles

```bash
chezmoi init yourusername --apply
```

---

## 🔐 Dotfiles Structure

| Repo                                                          | Description      |
| ------------------------------------------------------------- | ---------------- |
| [`dotfiles`](https://github.com/yourusername/dotfiles-public) | Public Dotfiles  |
| `dotfiles-private` (private)                                  | Private Dotfiles |

---

---

## 🎵 spotify-player

TUI Spotify client installed as `spotify-player-feats-git` (all features enabled).

### Cover Art

Set `cover_img_pixels = 512` in `~/.config/spotify-player/app.toml` for good image quality. The workspace launches ghostty with `TERM=xterm-ghostty` so viuer uses the kitty graphics protocol.

### Theme

A Tokyo Night theme is in `~/.config/spotify-player/theme.toml`.

Press `T` inside the app to open the theme switcher and select **tokyo-night**, or set it permanently in `app.toml`:

```toml
theme = "tokyo-night"
```

---

REMOVE README-CHEZMOI ALSO FROM .chezmoignore
