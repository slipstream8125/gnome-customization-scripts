cd #cd into the home directory
git clone https://github.com/Fausto-Korpsvart/Nightfox-GTK-Theme.git #Getting the Gruvbox-GTK theme
mkdir ~/.themes #making a directory for themes
cp -r Nightfox-GTK-Theme/themes/Nightfox-Dusk-B .themes/ # Transferring the required theme to the themes folder
cp -r .themes/Nightfox-Dusk-B /usr/share/themes/
gsettings set org.gnome.desktop.interface gtk-theme "Nightfox-Dusk-B" # Changing the gtk theme
gsettings set org.gnome.desktop.wm.preferences theme "Nightfox-Dusk-B"
echo "Removing Unnecessary Git repos"
rm -r Nightfox-Dusk-B
gnome-shell-extension-tool -e user-theme@gnome-shell-extensions.gcampax.github.com
gsettings set org.gnome.shell.extensions.user-theme name "Nightfox-Dusk-B"
git clone https://github.com/SylEleuth/gruvbox-plus-icon-pack.git
mkdir ~/.icons
cp -rv gruvbox-plus-icon-pack ~/.icons/GruvboxPlus
gsettings set org.gnome.desktop.interface icon-theme 'GruvboxPlus'
rm -r gruvbox-plus-icon-pack
gsettings set org.gnome.desktop.background picture-uri "cyber-0-day.png"
cd gdm-tools
./install.sh 
cd ..
rm -r gdm-tools
set-gdm-theme -s Nightfox-Dusk-B
# Removing Defaults
sudo rm -r /usr/share/images/vendor-logos
sudo rm -r /usr/share/plymouth/plymouthd.defaults
#Installing more stuff
sudo apt install neofetch vim neovim docker-ce-cli
pip install --upgrade gnome-extensions-cli
gext install widgets@Aylur
sudo apt -y install curl && bash <(curl -Ls https://github.com/Tux4Ubuntu/tux-install/raw/master/install.sh)
git clone https://github.com/slipstream8125/LUGOS-grub.git
cd LUGOS-grub/LUGOS-grub
echo "Enter Password for sudo access"
sudo ./install.sh
