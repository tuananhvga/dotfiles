sudo pacman -Sy --no-confirm ansible ansible-core
cd ~/dotfiles/ansible
sudo ansible-playbook sudo.yaml
ansible-playbook home.yaml
cd ~/dotfiles
mkdir -p ~/.config
mkdir -p ~/dev/personal ~/dev/public
stow -v --dotfiles -d config/dot-config -t ~/.config .
rm -f ~/.zshrc
stow -v --dotfiles -d home -t ~ .
