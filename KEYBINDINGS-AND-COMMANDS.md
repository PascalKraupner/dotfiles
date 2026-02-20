# Keybindings & Commands

## Fish Shell

### Aliases & Functions

| Command            | Action                                                        |
| ------------------ | ------------------------------------------------------------- |
| `v [file]`         | Open file in `nvim`                                           |
| `ls`               | Replaced with `eza`                                           |
| `cd`               | Replaced with `zoxide` (smart directory jumping)              |
| `mux`              | Lists all tmuxinator projects                                 |
| `mux <project>`    | Start or attach to a tmuxinator project (e.g. `mux chezmoi`)  |
| `muxn <project>`   | Start a new numbered instance (e.g. `chezmoi-2`, `chezmoi-3`) |
| `chrome-dev [url]` | Launch Chrome with remote debugging on port 9222              |
| `brave-dev [url]`  | Launch Brave with remote debugging on port 9222               |

### Git Abbreviations

| Abbreviation | Expands To             | Description                     |
| ------------ | ---------------------- | ------------------------------- |
| `g`          | `git`                  | Git base command                |
| `gs`         | `git status`           | Show working tree status        |
| `ga`         | `git add`              | Add files to staging            |
| `gc`         | `git commit`           | Commit changes                  |
| `gca`        | `git commit --amend`   | Amend last commit               |
| `gp`         | `git push`             | Push to remote                  |
| `gpl`        | `git pull`             | Pull from remote                |
| `gb`         | `git branch`           | List/create/delete branches     |
| `gd`         | `git diff`             | Show changes                    |
| `gl`         | `git log`              | Show commit history             |
| `gst`        | `git stash`            | Stash changes                   |
| `gstp`       | `git stash pop`        | Apply and remove stash          |
| `gsw`        | `git switch`           | Switch to branch                |
| `gswc`       | `git switch -c`        | Create and switch to new branch |
| `grs`        | `git restore`          | Restore/discard file changes    |
| `grss`       | `git restore --staged` | Unstage files                   |
| `gwt`        | `git worktree`         | Git worktree base command       |
| `gwta`       | `git worktree add`     | Add new worktree                |
| `gwtl`       | `git worktree list`    | List all worktrees              |
| `gwtr`       | `git worktree remove`  | Remove a worktree               |
| `gwtm`       | `git worktree move`    | Move a worktree                 |

## Tmux - SessionX (Prefix + o)

Open the fuzzy session manager with `Prefix + o`. Type to filter existing sessions or enter a new name to create one -- zoxide will automatically match it to a directory you've visited. Tmuxinator projects are also detected. Press `?` to toggle the preview pane.

| Key             | Action                                     |
| --------------- | ------------------------------------------ |
| `Enter`         | Switch to selected session (or create new) |
| `Alt+Backspace` | Delete the selected session                |
| `Ctrl-r`        | Rename a session                           |
| `Ctrl-w`        | Switch to window listing mode              |
| `Ctrl-t`        | Switch to tree view (sessions + windows)   |
| `Ctrl-x`        | Browse `~/Development` directory           |
| `Ctrl-e`        | Expand PWD and search local directories    |
| `Ctrl-f`        | Browse all zoxide-tracked directories      |
| `Ctrl-b`        | Go back to initial session list            |
| `Ctrl-/`        | Show tmuxinator projects                   |
| `Ctrl-u`        | Scroll preview up                          |
| `Ctrl-d`        | Scroll preview down                        |
| `Ctrl-n`        | Move selection up                          |
| `Ctrl-p`        | Move selection down                        |
| `?`             | Toggle preview pane                        |

## Voxtype Voice Dictation

| Key                 | Action                                                |
| ------------------- | ----------------------------------------------------- |
| `SUPER + V` (hold)  | Push-to-talk: hold to record, release to transcribe   |
| `SUPER + SHIFT + V` | Toggle mode: press once to start, press again to stop |
| `F12` or `Escape`   | Cancel recording (while in recording submap)          |

## Yazi File Manager

| Key         | Action                          |
| ----------- | ------------------------------- |
| `Tab`       | Toggle file metadata/info panel |
| `~` or `F1` | Open help menu                  |
| `.`         | Toggle hidden files visibility  |
| `z`         | Jump to directory via zoxide    |
