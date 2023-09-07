#TODO: Make this work with any Linux distro, currently just Arch
echo "Installing required dependencies to Homebrew"
sudo pacman -Sy archlinux-keyring
sudo pacman -Syu base-devel procps-ng curl file npm yarn rust zsh which

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin

echo "Installing all apps from Brewfile"
brew bundle --file ~/.dotfiles/Brewfile

echo "Installing extras not on Brewfile"
#brew install docker slack discord whatsapp awscli google-chrome bat tmux # Apps for full arch
brew install docker awscli bat tmux # Apps for WSL Arch

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Zsh as the default shell
chsh -s $(which zsh) 

echo "Installing LunarVim"
LV_BRANCH='release-1.3/neovim-0.9'
bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

echo "Making symbolic links to the dotfiles and configuration"
mkdir ~/.config/ ~/.config/lvim/ ~/.config/tmux/
touch ~/.gitconfig ~/.zshrc
rm ~/.gitconfig ~/.zshrc
ln -s ~/.gitconfig ~/.dotfiles/.gitconfig
ln -s ~/.zshrc ~/.dotfiles/.zshrc
ln -s ~/.config/lvim/config.lua ~/.dotfiles/lvim/config.lua
ln -s ~/.config/tmux/tmux.conf ~/.dotfiles/tmux/tmux.conf

echo "Making my prefered folder structure"
mkdir ~/projects/
mkdir ~/projects/work/
mkdir ~/projects/work/betha/
mkdir ~/projects/work/betha/edge_point/
mkdir ~/projects/personal/
mkdir ~/projects/personal/study/
mkdir ~/projects/personal/study/devops/
mkdir ~/projects/personal/study/devops/serveless/
mkdir ~/projects/personal/study/devops/serveless/javascript/
mkdir ~/projects/personal/study/devops/kubernetes/
mkdir ~/projects/personal/study/devops/infra_as_code/terraform/
mkdir ~/projects/personal/study/college/programacao_1/atividades/
mkdir ~/projects/personal/study/college/programacao_2/atividades/
mkdir ~/projects/personal/study/programing/
mkdir ~/projects/personal/study/programing/backend/
mkdir ~/projects/personal/study/programing/backend/go/
mkdir ~/projects/personal/study/programing/backend/typescript/
mkdir ~/projects/personal/study/programing/backend/web_scrapping/
mkdir ~/projects/personal/study/programing/frontend/web/
mkdir ~/projects/personal/study/programing/frontend/mobile/
mkdir ~/projects/personal/side_projects/
mkdir ~/projects/personal/side_projects/backend/
mkdir ~/projects/personal/side_projects/backend/apis/
mkdir ~/projects/personal/side_projects/backend/clis/
mkdir ~/projects/personal/side_projects/backend/functions/
mkdir ~/projects/personal/side_projects/backend/web_scrappers/
mkdir ~/projects/personal/side_projects/frontend/
mkdir ~/projects/personal/side_projects/frontend/desktop/
mkdir ~/projects/personal/side_projects/frontend/web/
mkdir ~/projects/personal/side_projects/frontend/mobile/

echo "Instalation complete!"
