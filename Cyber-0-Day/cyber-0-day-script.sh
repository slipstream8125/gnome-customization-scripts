cd #cd into the home directory
git clone https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme.git #Getting the Gruvbox-GTK theme
mkdir ~/.themes #making a directory for themes
cp -r Gruvbox-GTK-Theme/themes/Gruvbox-Dark-B .themes/Gruvbox-Dark-B # Transferring the required theme to the themes folder
cp -r .themes/Gruvbox-Dark-B /usr/share/themes/
gsettings set org.gnome.desktop.interface gtk-theme "Gruvbox-Dark-B" # Changing the gtk theme
gsettings set org.gnome.desktop.wm.preferences theme "Gruvbox-Dark-B"
echo "Removing Unnecessary Git repos"
rm -r Gruvbox-GTK-Theme
gnome-shell-extension-tool -e user-theme@gnome-shell-extensions.gcampax.github.com
gsettings set org.gnome.shell.extensions.user-theme name "Gruvbox-Dark-B"
git clone https://github.com/SylEleuth/gruvbox-plus-icon-pack.git
mkdir ~/.icons
cp -rv gruvbox-plus-icon-pack ~/.icons/GruvboxPlus
gsettings set org.gnome.desktop.interface icon-theme 'GruvboxPlus'
rm -r gruvbox-plus-icon-pack
gsettings set org.gnome.desktop.background picture-uri "cyber-0-day.png"
curl -fsSL https://raw.githubusercontent.com/manilarome/blurredfox/script/install.sh | bash -s -- esr
git clone --depth=1 --single-branch https://github.com/realmazharhussain/gdm-tools.git
cd gdm-tools
./install.sh 
cd ..
rm -r gdm-tools
set-gdm-theme -s Gruvbox-Dark-B
sudo apt install neofetch vim neovim
pip install --upgrade gnome-extensions-cli
gext install widgets@Aylur
sudo apt -y install curl && bash <(curl -Ls https://github.com/Tux4Ubuntu/tux-install/raw/master/install.sh)
git clone https://git.fs.lmu.de/adnan/grub2-gruvbox.git
cd grub2-gruvbox/
echo "Enter Password for sudo access"
sudo ./install.sh
