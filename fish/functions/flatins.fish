function flatins --wraps='flatpak install flathub -y' --description 'alias flatins=flatpak install flathub -y'
  flatpak install flathub -y $argv
        
end
