fish_vi_key_bindings
starship init fish | source

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


