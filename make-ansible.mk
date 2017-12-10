ansible-vaults-encrypt:
	ansible-vault encrypt ansible/production/group_vars/all/vault.yml
	ansible-vault encrypt ansible/development/group_vars/all/vault.yml

ansible-vaults-decrypt:
	ansible-vault decrypt ansible/production/group_vars/all/vault.yml
	ansible-vault decrypt ansible/development/group_vars/all/vault.yml

ansible-development-setup:
	ansible-playbook ansible/development.yml -i ansible/development -vv
