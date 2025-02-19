echo "Installing LunarVim"
LV_BRANCH='release-1.3/neovim-0.9'
bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

echo "Making symbolic links to the dotfiles and configuration"
mkdir ~/.config/ ~/.config/lvim/ ~/.config/tmux/
touch ~/.gitconfig ~/.zshrc
rm ~/.gitconfig ~/.zshrc
ln -sf ~/.gitconfig ~/.dotfiles/.gitconfig
ln -sf ~/.zshrc ~/.dotfiles/.zshrc
ln -sf ~/.config/lvim/config.lua ~/.dotfiles/lvim/config.lua
ln -sf ~/.config/tmux/tmux.conf ~/.dotfiles/tmux/tmux.conf

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
