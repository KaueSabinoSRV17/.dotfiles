#TODO: Make this work with any Linux distro, currently just Arch
echo "Installing required dependencies to Homebrew"
sudo pacman -Syu base-devel procps-ng curl file npm yarn rust zsh which

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin

echo "Installing all apps from Brewfile"
brew bundle --file ~/.dotfiles/Brewfile

echo "Installing extras not on Brewfile"
#brew install docker slack discord whatsapp awscli google-chrome bat tmux # Apps for full arch
brew install awscli bat tmux # Apps for WSL Arch

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Zsh as the default shell
chsh -s $(which zsh) 
