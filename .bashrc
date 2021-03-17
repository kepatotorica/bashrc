#P
pcty="/c/Paylocity/"
alias oneline="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias checkout="git checkout -"
alias mygit="cd "$pcty
alias myGit="cd "$pcty
alias MyGit="cd "$pcty
alias Mygit="cd "$pcty
alias Paylocity="cd "$pcty
alias paylocity="cd "$pcty
alias pay="cd "$pcty
alias common="cd "$pcty"paylocity.taxfiling.common "
alias transcommon="cd "$pcty"paylocity.taxfiling.common "
alias transc="cd "$pcty"paylocity.taxfiling.common "
alias transsc="cd "$pcty"paylocity.taxfiling.transmission.scenarios"
alias transs="cd "$pcty"paylocity.taxfiling.transmission.scenarios"
alias transapi="cd "$pcty"paylocity.taxfiling.transmission.api "
alias formgen="cd "$pcty"paylocity.taxfiling.transmission/"
alias trans="cd "$pcty"paylocity.taxfiling.transmission/"
alias transdb="cd "$pcty"paylocity.taxfiling.transmission.db"
alias transui="cd "$pcty"paylocity.taxfiling.transmission.ui"
alias taxd="cd "$pcty"paylocity.taxfiling.taxdistro "
alias taxm="cd "$pcty"paylocity.taxfiling.Forms.Messaging "
alias setup="cd C:\Paylocity\DevBuildTasks\; ./ConfigurationDatabaseSetup.bat; cd C:\Paylocity\Escher\DeveloperTasks\DatabaseSetup; ./ConfigurationDatabase_Deploy.bat"

#git
alias rmorig="find . -name *.*.orig -type f -delete; find . -wholename */*/*.*.orig -type f -delete"
alias fetch="git fetch "
alias gitreset="git reset --hard "
alias push="git push "
alias pull="git pull "
alias status="git status "
alias lc="git ls-files | while read f; do git blame -w -M -C -C --line-porcelain "$f" | grep -I '^author '; done | sort -f | uniq -ic | sort -n"
alias mergeMaster="git checkout master; git pull; git checkout -; git merge master; git mergetool"
alias mergemaster="git checkout master; git pull; git checkout -; git merge master; git mergetool"
alias mmaster="git checkout master; git pull; git checkout -; git merge master; git mergetool"
alias cleanrepo="echo 'git clean -fdx'; temp; git reset --hard; git clean -fdx"
alias gitclean="echo 'git clean -fdx'; temp; git reset --hard; git clean -fdx"
alias temp="git branch -d temp; git checkout -b temp; git checkout -"
alias master="git checkout master; git pull"
# https://stackoverflow.com/questions/5189560/squash-my-last-x-commits-together-using-git/5201642#5201642
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

#Explorer
alias cdDownloads='cd ~/Downloads'
alias downloads='cd ~/Downloads'
alias Downloads='cd ~/Downloads'
alias desktop='cd ~/Desktop'
alias Desktop='cd ~/Desktop'
alias open="start ."

alias edit="code ~/.bashrc"
alias editTerminal="code ~/.bashrc"
alias settings="code ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"
alias theme="code ~/.bash/themes/PL/theme.bash"
alias reset="source ~/.bashrc"
alias updateBash="git clone https://github.com/kepatotorica/bashrc.git; cd bashrc; sh install.sh; cd -; rm -fr bashrc"

homeAlias=$HOME'/.bashrc'

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

commit() {
    str="$*"

    BRANCH_NAME=$(git symbolic-ref --short HEAD)
    
    echo $BRANCH_NAME
    if [ -z "$str" ] 
    then
        read -p "Enter a commit message: " str
    fi

    if [ $BRANCH_NAME != "master" ]
    then
        git add .
        echo "git commit -am \"${BRANCH_NAME##*/}: $str\""
        git commit -am "${BRANCH_NAME##*/}: $str"
    else
        echo "You should not be commiting on master!!!"
    fi
}


pp() {
    str="$*"
    BRANCH_NAME=$(git symbolic-ref --short HEAD)
    echo "git push --set-upstream origin ${BRANCH_NAME}"
    git push --set-upstream origin ${BRANCH_NAME}
}

generateEmbedded(){
    echo "Finding all xsd's under: ${PWD}"
    echo "$(find . -name \*.xsd | tr "/" .)"
}



#Install the fonts
installPowerlineFonts(){
    # You must do the stuff below to get powerline in git bash, also make sure to set the font to a PL font in settings.json. 
    # here is a video for the prompt steps 
    # the text guide https://www.hanselman.com/blog/how-to-make-a-pretty-prompt-in-windows-terminal-with-powerline-nerd-fonts-cascadia-code-wsl-and-ohmyposh

    curl -LJO https://github.com/microsoft/cascadia-code/releases/download/v2102.25/CascadiaCode-2102.25.zip
    unzip CascadiaCode-2102.25.zip >/dev/null
    mkdir c:/Windows/Fonts >/dev/null
    mv ttf/CascadiaCodePL.ttf c:/Windows/Fonts/ >/dev/null
    mv ttf/CascadiaMonoPL.ttf c:/Windows/Fonts/ >/dev/null
    rm -fr otf >/dev/null
    rm -fr woff2 >/dev/null
    rm -fr ttf >/dev/null
    rm -fr CascadiaCode-2102.25.zip >/dev/null
    echo ""
    echo ""
    echo ""
    echo "If you cannot see your font in the settings for bash (it will be postfixed with a PL) then download fonts from here https://github.com/microsoft/cascadia-code/releases Then follow this guide (timestamped) https://youtu.be/lu__oGZVT98?t=186"
}


# cd ..
# the fonts https://github.com/microsoft/cascadia-code/releases?WT.mc_id=-blog-scottha
THEME=~/.bash/themes/PL/theme.bash
if [ -f $THEME ]; then
   . $THEME
fi
unset THEME

PROMPT_DIRTRIM=2
