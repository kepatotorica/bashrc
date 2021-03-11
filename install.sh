echo "Moving bashrc"
scp .bashrc ~/.bashrc
echo "Moving settings.json for windows terminal"
scp settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
source ~/.bashrc
echo "moving inputrc to remove visible blink"
scp inputrc C:/Program\ Files/Git/etc/inputrc
echo "installing bash theme"
mkdir ~/.bash/themes/PL/
scp theme.bash ~/.bash/themes/PL/theme.bash
echo "If you don't have powerline fonts use this alias to download them installPowerlineFonts"
source ~/.bashrc
