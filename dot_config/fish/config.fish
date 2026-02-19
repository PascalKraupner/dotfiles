fish_vi_key_bindings

if test (uname) = Darwin
    set -gx PATH /opt/homebrew/bin $PATH
end

set -gx TERM xterm-256color
set -gx COLORTERM truecolor

fish_add_path ~/bin
fish_add_path ~/go/bin
fish_add_path ~/.local/bin
fish_add_path .npm-global/bin

alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'

starship init fish | source
zoxide init --cmd cd fish | source

function forward-char-and-accept-autosuggestion-if-at-end
    set -l right_of_cursor "$(string sub "$(commandline)" --start (math (commandline --cursor) + 2))"
    commandline -f forward-char
    if test -z $right_of_cursor
        commandline -f accept-autosuggestion
    end
end
bind l forward-char-and-accept-autosuggestion-if-at-end

function v
    nvim $argv
end

function ls
    eza $argv
end

function clipboard-paste
    commandline --insert (wl-paste)
end

if test "$fish_key_bindings" = fish_vi_key_bindings
    bind -M default p clipboard-paste
end

function chrome-dev -d "Launch Chrome with remote debugging on port 9222"
    google-chrome-stable --remote-debugging-port=9222 --user-data-dir=/tmp/chrome-dev-profile $argv
end

function brave-dev -d "Launch Brave with remote debugging on port 9222"
    brave --remote-debugging-port=9222 --user-data-dir=/tmp/brave-dev-profile $argv
end

function mux -d "Start or attach to a tmuxinator session"
    if test (count $argv) -eq 0
        tmuxinator list
        return
    end
    set -l project $argv[1]
    tmuxinator start $project
end

function muxn -d "Start a new numbered tmuxinator session"
    if test (count $argv) -eq 0
        echo "Usage: muxn <project>"
        return 1
    end
    set -l project $argv[1]
    set -l count 2
    while tmux has-session -t "$project-$count" 2>/dev/null
        set count (math $count + 1)
    end
    tmuxinator start $project -n "$project-$count"
end

abbr -a j just

abbr -a g git
abbr -a gs git status
abbr -a ga git add
abbr -a gc git commit
abbr -a gca git commit --amend
abbr -a gp git push
abbr -a gpl git pull
abbr -a gb git branch
abbr -a gd git diff
abbr -a gl git log
abbr -a gst git stash
abbr -a gstp git stash pop

abbr -a gsw git switch
abbr -a gswc git switch -c
abbr -a grs git restore
abbr -a grss git restore --staged

abbr -a gwt git worktree
abbr -a gwta git worktree add
abbr -a gwtl git worktree list
abbr -a gwtr git worktree remove
abbr -a gwtm git worktree move
