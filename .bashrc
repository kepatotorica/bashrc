alias school="cd /c/Users/kep/Desktop/school/ "
alias downloads='start ~/Downloads'
alias Downloads='start ~/Downloads'
alias open="start ."
alias jn="jupyter notebook &"
alias dbProject="cd /c/Users/kep/Downloads/charity-shell/charity-shell "
alias killnpm='cmd "/C TASKKILL /IM node.exe /F"'
alias mygit="cd /c/Users/kep/mygit/ "
alias aob="cd /c/Users/kep/mygit/aobStringCreator "
alias defaultMaster="git branch --set-upstream-to origin/master "
alias defaultmaster="git branch --set-upstream-to origin/master "
alias pushmaster="git branch --set-upstream-to origin/master "
alias pushMaster="git branch --set-upstream-to origin/master "
env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env

alias edit="code ~/.bashrc"
alias reset="source ~/.bashrc"
alias onyx="ssh -Y kepatotorica@onyx.boisestate.edu"
alias cs321="cd ~/cs321"
alias grind="make clean && make && valgrind --leak-check=yes"

homeAlias='/c/Users/kep/.bashrc'

addAlias() {
    $(newAlias)
}

addalias() {
    $(newAlias)
}

newalias() {
    $(newAlias)
}

#TODO change the name after alias
newAlias() {
    touch temp;
    echo -n 'alias ' >> temp;
    read -p "Enter a name for this alias: " value
    echo -n $value >> temp;
    echo -n '="' >> temp;
    for item in "$@" ;
        do echo -n "$item" >> temp;
        echo -n " " >> temp;
        done;
    echo '"' >> temp;
    cat $homeAlias >> temp;
    mv -f temp $homeAlias;
    source ~/.bashrc -q;
}
