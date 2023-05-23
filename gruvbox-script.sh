cd 
sudo apt install gtk2-engines-murrine
git clone https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme.git
mkdir .themes
cp -r Gruvbox-GTK-Theme/themes/Gruvbox-Dark-B .themes/Gruvbox-Dark-B
gsettings set org.gnome.desktop.interface gtk-theme "Gruvbox-Dark-B"
gsettings set org.gnome.desktop.wm.preferences theme "Gruvbox-Dark-B"
echo "Removing Unnecessary Git repos"
rm -r Gruvbox-GTK-Theme
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

