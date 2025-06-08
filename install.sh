sudo pacman -Suy --noconfirm
sudo pacman -Sy --noconfirm ansible ansible-core
cd ~/dotfiles/ansible
sudo ansible-playbook sudo.yaml
ansible-playbook home.yaml
cd ~/dotfiles
mkdir -p ~/.config
mkdir -p ~/dev/personal ~/dev/public
stow -v --dotfiles -d config/dot-config -t ~/.config .
rm -f ~/.zshrc
stow -v --dotfiles -d home -t ~ .
