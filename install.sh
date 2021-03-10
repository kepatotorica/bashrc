echo "Moving bashrc"
cp .bashrc ~/.bashrc
echo "Moving settings.json for windows terminal"
cp settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
source ~/.bashrc
echo "installing bash theme"
cp theme.bash ~/.bash/themes/git_bash_windows_powerline/theme.bash
echo "installing Powerline Fonts"
installPowerlineFonts
source ~/.bashrc
