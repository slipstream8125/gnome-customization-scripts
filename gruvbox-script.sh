cd #cd into the home directory
git clone https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme.git #Getting the Gruvbox-GTK theme
mkdir .themes #making a directory for themes
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
wget -O tux-image.png https://wallpapercave.com/dwp1x/GB0uYQa.png
gsettings set org.gnome.desktop.background picture-uri "tux-image.png"
