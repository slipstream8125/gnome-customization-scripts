cd #cd into the home directory
pip install --upgrade gnome-extensions-cli
gext install widgets@aylur
git clone https://github.com/Fausto-Korpsvart/Nightfox-GTK-Theme.git #Getting the Gruvbox-GTK theme
mkdir ~/.themes #making a directory for themes
cp -r Nightfox-GTK-Theme/themes/Nightfox-Dusk-B .themes/ # Transferring the required theme to the themes folder
sudo cp -r .themes/Nightfox-Dusk-B /usr/share/themes/
gsettings set org.gnome.desktop.interface gtk-theme "Nightfox-Dusk-B" # Changing the gtk theme
gsettings set org.gnome.desktop.wm.preferences theme "Nightfox-Dusk-B"
echo "Removing Unnecessary Git repos"
rm -r Nightfox-Dusk-B
git clone https://github.com/SylEleuth/gruvbox-plus-icon-pack.git
mkdir ~/.icons
cp -r gruvbox-plus-icon-pack/Grubox-Plus-Dark ~/.icons/
gsettings set org.gnome.desktop.interface icon-theme 'gruvbox-plus-dark'
rm -r gruvbox-plus-icon-pack
gsettings set org.gnome.desktop.background picture-uri "cyber-0-day.png"
git clone --depth=1 --single-branch https://github.com/realmazharhussain/gdm-tools.git
cd gdm-tools
./install.sh 
cd ..
rm -r gdm-tools
set-gdm-theme -s Nightfox-Dusk-B
# Removing Defaults
sudo echo "" > /usr/share/plymouth/plymouthd.defaults
#Installing more stuff
sudo apt install -y neofetch vim neovim docker.io
sudo rm  /usr/share/gdm/dconf/92-kali-themes 

sudo apt -y install curl flatpak
flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# bash <(curl -Ls https://github.com/Tux4Ubuntu/tux-install/raw/master/install.sh)

git clone https://github.com/slipstream8125/LUGOS-grub.git
cd LUGOS-grub/LUGOS-grub
echo "Enter Password for sudo access"
chmod +x install.sh
sudo ./install.sh
gext install hide-activities-button@gnome-shell-extensions.bookmarkd.xyz
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
chsh -s /bin/bash
