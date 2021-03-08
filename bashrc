# something with output | clip

alias common="cd /c/Paylocity/paylocity.taxfiling.common "
alias transcommon="cd /c/Paylocity/paylocity.taxfiling.common "
alias transc="cd /c/Paylocity/paylocity.taxfiling.common "
alias transsc="cd /c/Paylocity/paylocity.taxfiling.transmission.scenarios"
alias transs="cd /c/Paylocity/paylocity.taxfiling.transmission.scenarios"
alias cleanrepo="echo 'git clean -fdx'; temp; git reset --hard; git clean -fdx"
alias gitclean="echo 'git clean -fdx'; temp; git reset --hard; git clean -fdx"
alias transapi="cd /c/Paylocity/paylocity.taxfiling.transmission.api "
alias master="git checkout master; git pull"
alias temp="git branch -d temp; git checkout -b temp; git checkout -"
alias formgen="cd /c/Paylocity/paylocity.taxfiling.transmission/"
alias trans="cd /c/Paylocity/paylocity.taxfiling.transmission/"
alias transdb="cd /c/Paylocity/paylocity.taxfiling.transmission.db"
alias transui="cd /c/Paylocity/paylocity.taxfiling.transmission.ui"
alias fetch="git fetch "
alias gitreset="git reset --hard "
alias push="git push "
alias pull="git pull "
alias status="git status "
alias lc="git ls-files | while read f; do git blame -w -M -C -C --line-porcelain "$f" | grep -I '^author '; done | sort -f | uniq -ic | sort -n"
alias mergeMaster="git checkout master; git pull; git checkout -; git merge master; git mergetool"
alias mergemaster="git checkout master; git pull; git checkout -; git merge master; git mergetool"
alias mmaster="git checkout master; git pull; git checkout -; git merge master; git mergetool"
alias rmorig="find . -name *.*.orig -type f -delete; find . -wholename */*/*.*.orig -type f -delete"
alias squash="echo 'git reset --soft HEAD~1 && git commit'"
alias cc="echo 'git reset --soft HEAD~1 && git commit, use cc(num commits to squash)'"
alias ccb="git reset HEAD@{1}"
alias cc1="git reset --soft HEAD~1"
alias cc2="git reset --soft HEAD~2"
alias cc3="git reset --soft HEAD~3"
alias cc4="git reset --soft HEAD~4"
alias cc5="git reset --soft HEAD~5"
alias cc6="git reset --soft HEAD~6"
alias cc7="git reset --soft HEAD~7"
alias combine="echo 'git reset --soft HEAD~1 && git commit, use cc(num commits to squash)'"
# https://stackoverflow.com/questions/5189560/squash-my-last-x-commits-together-using-git/5201642#5201642
# alias oneline="git log --oneline"
alias oneline="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias checkout="git checkout -"
alias workspace="cd /c/Users/KTotorica/source/repos"
alias visual="cd /c/Users/KTotorica/source/repos"
alias visualStudio="cd /c/Users/KTotorica/source/repos"
alias repos="cd /c/Users/KTotorica/source/repos"
alias desktop="cd /c/Users/KTotorica/Desktop"
alias Desktop="cd /c/Users/KTotorica/Desktop"
alias mygit="cd /c/Paylocity "
alias myGit="cd /c/Paylocity "
alias MyGit="cd /c/Paylocity "
alias Mygit="cd /c/Paylocity "
alias Paylocity="cd /c/Paylocity "
alias paylocity="cd /c/Paylocity "
alias pay="cd /c/Paylocity "

alias cdDownloads='cd ~/Downloads'
alias downloads='start ~/Downloads'
alias Downloads='start ~/Downloads'
alias open="start ."
alias killnpm='cmd "/C TASKKILL /IM node.exe /F"'
alias killjava='cmd "/C taskkill.exe /F /IM java.exe"'
alias defaultMaster="git branch --set-upstream-to origin/master "
alias defaultmaster="git branch --set-upstream-to origin/master "
alias pushmaster="git branch --set-upstream-to origin/master "
alias pushMaster="git branch --set-upstream-to origin/master "
alias edit="code ~/.bashrc"
alias bashrc="code ~/.bashrc"
alias reset="source ~/.bashrc"

# PROMPT_COMMAND='__posh_git_ps1 "\u@\h:\w " "\\\$ ";'$PROMPT_COMMAND

homeAlias='/c/Users/ktotorica/.bashrc'

addAlias() {
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

addalias() {
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

newalias() {
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

commit_branch_prepend() {
    BRANCH_NAME=$(git symbolic-ref --short HEAD)
    read -p "message: " value
    echo
    echo "git commit -am \"${BRANCH_NAME##*/}: $value\""
    git commit -am "${BRANCH_NAME##*/}: $value"
}


# commit() {
#     git add .
#     BRANCH_NAME=$(git symbolic-ref --short HEAD)
#     optional_warning="do you need to change the readme and the Version.cs file?"
#     echo ${optional_warning}
#     read -p "message: " value
#     echo
#     echo "git commit -am \"${BRANCH_NAME##*/}: $value\""
#     git commit -am "${BRANCH_NAME##*/}: $value"
# }

commit() {
    str="$*"

    BRANCH_NAME=$(git symbolic-ref --short HEAD)

    # read -p "Did you update Readme and src/Version?: (enter for yes, anything for no)" value
    # read -p "would you like to push?: (enter for no, anything for yes)" value
    # if [ -z $value ]
    # then
    if [ -z "$str" ]
    then
        read -p "Enter a commit message: " str
    fi

    git add .
    echo "git commit -am \"${BRANCH_NAME##*/}: $str\""
    git commit -am "${BRANCH_NAME##*/}: $str"
}


pp() { #git push -u origin branch name
    str="$*"
    BRANCH_NAME=$(git symbolic-ref --short HEAD)
    echo "git push --set-upstream origin ${BRANCH_NAME}"
    git push --set-upstream origin ${BRANCH_NAME}
}

generateEmbedded(){
    echo "Finding all xsd's under: ${PWD}"
    echo "$(find . -name \*.xsd | tr "/" .)"
}

# You must do the stuff below to get powerline in git, also make sure to set the font to a PL font. 
# here is a video for the prompt steps https://www.youtube.com/watch?v=lu__oGZVT98
# for git bash just choos it in settings
# for windows terminal just set it in the settings.json under the bash profile
# cd $HOME
# mkdir -p .bash/themes/git_bash_windows_powerline
# git clone https://github.com/diesire/git_bash_windows_powerline.git .bash/themes/git_bash_windows_powerline
# git clone https://github.com/powerline/fonts.git --depth=1
# cd fonts
# ./install.sh
# cd ..
# rm -rf fonts

THEME=$HOME/.bash/themes/git_bash_windows_powerline/theme.bash
if [ -f $THEME ]; then
   . $THEME
fi
unset THEME
