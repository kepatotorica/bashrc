alias mygit="cd /c/Paylocity "
alias myGit="cd /c/Paylocity "
alias MyGit="cd /c/Paylocity "
alias Mygit="cd /c/Paylocity "
alias Paylocity="cd /c/Paylocity "
alias paylocity="cd /c/Paylocity "

alias setup="cd C:\Paylocity\DevBuildTasks\; ./ConfigurationDatabaseSetup.bat; cd C:\Paylocity\Escher\DeveloperTasks\DatabaseSetup; ./ConfigurationDatabase_Deploy.bat"

# env=~/.ssh/agent.env


# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running

alias downloads='start ~/Downloads'
alias Downloads='start ~/Downloads'
alias open="start ."
alias killnpm='cmd "/C TASKKILL /IM node.exe /F"'
alias defaultMaster="git branch --set-upstream-to origin/master "
alias defaultmaster="git branch --set-upstream-to origin/master "
alias pushmaster="git branch --set-upstream-to origin/master "
alias pushMaster="git branch --set-upstream-to origin/master "
alias edit="code ~/.bashrc"
alias reset="source ~/.bashrc"

homeAlias='/c/Users/ktotorica/.bashrc'

addAlias() {
    $(newAlias)
}

addalias() {
    $(newAlias)
}

newalias() {
    $(newAlias)
}

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
