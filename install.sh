sudo pacman -S ansible ansible-core
cd ~/dotfiles/ansible
sudo ansible-playbook sudo.yaml
ansible-playbook home.yaml
cd ~/dotfiles
mkdir -p ~/.config
stow -v --dotfiles -d config -t ~ .
stow -v --dotfiles -d home -t ~ .
