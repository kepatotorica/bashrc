echo "Moving bashrc"
scp .bashrc ~/.bashrc
echo "Moving settings.json for windows terminal"
scp settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
source ~/.bashrc
echo "installing bash theme"
mkdir ~/.bash/themes/PL/
scp theme.bash ~/.bash/themes/PL/theme.bash
echo "installing Powerline Fonts"
installPowerlineFonts
source ~/.bashrc
