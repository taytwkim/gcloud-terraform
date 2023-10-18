[server]
${server_public_ip}

[all:children]
server

[all:vars]
ansible_ssh_user=${ansible_user}
ansible_ssh_private_key_file=${ansible_sshkey}
