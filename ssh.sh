#A solution would be to force the key files to be kept permanently, by adding them in your ~/.ssh/config file:

IdentityFile ~/.ssh/gitHubKey
IdentityFile ~/.ssh/id_rsa_buhlServer


# or

Host *
    ForwardAgent yes # deliver key to remote server, not secure, maybe you should disable it
    AddKeysToAgent yes 
    IdentityFile ~/.ssh/id_ecdsa
    IdentityFile ~/.ssh/id_rsa


# On Jenkins slave create jenkins user
useradd -d /var/lib/jenkins jenkins
# Create and deliver ssh keys for slave from master
ssh-keygen -t rsa -b 2096 -f <ssh_file_name>
ssh-copy-id -i <ssh_file_name>.pub jenkins@<host>
