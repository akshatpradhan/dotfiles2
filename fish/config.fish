if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(/opt/homebrew/bin/brew shellenv)"
    rbenv init - | source
    pyenv init - | source
    #source (rbenv init - | psub)
    #source (pyenv init - | psub)
end