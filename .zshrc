eval "$(direnv hook zsh)"

export NVM_DIR="$HOME/.nvm"
export PATH=$HOME/.nodebrew/current/bin:$PATH
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# AUTOCOMPLETION

# initialize autocompletion
autoload -U compinit && compinit

# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# autocompletion using arrow keys (based on history)
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
# bindkey '\e[A' history-search-backward
bindkey '\e[A' history-substring-search-up
# bindkey '\e[B' history-search-forward
bindkey '\e[B' history-substring-search-down



# go to repository
gor() {
    [[ $- != *i* ]] && return # don't run in non-interactive shells
    echo "TIPs: use gorc to open code"
    local name=$1
    local url=$2

    if [ -n "$name" ]; then
        if [ !  -n "$url" ]; then
            echo "specify repository url. Usage: gor <name> <url>"
            return
        fi
    else
        id="$(find ~/code/personal ~/code/repo -maxdepth 1 -type d | fzf)"; [ -n "$id" ] && cd "$id"
        return
    fi
    
    org=public
    if grep -q "github.com/0xys/" <<< "$url"; then
        dir=$HOME/code/personal/$name
        git clone "$url" $dir 
        cd $dir
        return
    fi
    
    dir=$HOME/code/repo/$name
    git clone "$url" $dir 
    cd $dir
    return
}

fzfcd() {
    [[ $- != *i* ]] && return # don't run in non-interactive shells
    cd $(find * -type d | fzf)
    pwd
}

cdg() {
    cd "$(git rev-parse --show-toplevel)"
}