alias master="git checkout master; git pull master"
alias temp="git branch -d temp; git checkout -b temp; git checkout -"
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
alias cc1="git reset --soft HEAD~1"
alias cc2="git reset --soft HEAD~2"
alias cc3="git reset --soft HEAD~3"
alias cc4="git reset --soft HEAD~4"
alias cc5="git reset --soft HEAD~5"
alias cc6="git reset --soft HEAD~6"
alias cc7="git reset --soft HEAD~7"
alias combine="echo 'git reset --soft HEAD~1 && git commit, use cc(num commits to squash)'" 
# https://stackoverflow.com/questions/5189560/squash-my-last-x-commits-together-using-git/5201642#5201642
alias oneline="git log --oneline"
alias checkout="git checkout -"
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


pp() {
    str="$*"
    BRANCH_NAME=$(git symbolic-ref --short HEAD)
    echo "git push --set-upstream origin ${BRANCH_NAME}"
    git push --set-upstream origin ${BRANCH_NAME}
}

# commit() {
#     str="$*"

#     BRANCH_NAME=$(git symbolic-ref --short HEAD)

#     read -p "Did you update Readme and src/Version?: (enter for yes, anything for no)" value
#     if [ -z $value ] 
#     then
#         if [ -z "$str" ] 
#         then
#             read -p "Enter a commit message: " str
#         fi

#         git add .
#         echo "git commit -am \"${BRANCH_NAME##*/}: $str\""
#         git commit -am "${BRANCH_NAME##*/}: $str"
#     else
#         code readme.md
#         code src/Version.cs
#     fi
# }
