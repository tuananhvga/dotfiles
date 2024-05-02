sudo pacman -S ansible ansible-core
cd ~/dotfiles/ansible
sudo ansible-playbook sudo.yaml
ansible-playbook home.yaml
cd ~/dotfiles
stow -v --dotfiles -d config -t ~ .
