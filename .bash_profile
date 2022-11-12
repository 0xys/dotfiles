
# highlight
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEEgEdxbxgxcxd

# go
export GOPATH="$HOME/go"
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:/usr/local/go/bin

# powerline-go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $? -jobs $(jobs -p | wc -l) -hostname-only-if-ssh -cwd-mode semifancy -cwd-max-depth 3)"

    # Uncomment the following line to automatically clear errors after showing
    # them once. This not only clears the error for powerline-go, but also for
    # everything else you run in that shell. Don't enable this if you're not
    # sure this is what you want.

    #set "?"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
