# Install prereqs
ansible-galaxy install -r requirements.yml
# Usage
ansible-playbook -i inventory.yaml -u linuxdev <target playbook>.yaml --ask-become-pass

