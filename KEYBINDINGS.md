# Keybindings & Commands

## Fish Shell

### Aliases & Functions

| Command          | Action                                                        |
| ---------------- | ------------------------------------------------------------- |
| `v [file]`       | Open file in `nvim`                                           |
| `ls`             | Replaced with `eza`                                           |
| `cd`             | Replaced with `zoxide` (smart directory jumping)              |
| `mux`            | Lists all tmuxinator projects                                 |
| `mux <project>`  | Start or attach to a tmuxinator project (e.g. `mux chezmoi`)  |
| `muxn <project>` | Start a new numbered instance (e.g. `chezmoi-2`, `chezmoi-3`) |

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

## Yazi File Manager

| Key         | Action                          |
| ----------- | ------------------------------- |
| `Tab`       | Toggle file metadata/info panel |
| `~` or `F1` | Open help menu                  |
| `.`         | Toggle hidden files visibility  |
| `z`         | Jump to directory via zoxide    |
