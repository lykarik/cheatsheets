#A solution would be to force the key files to be kept permanently, by adding them in your ~/.ssh/config file:

IdentityFile ~/.ssh/gitHubKey
IdentityFile ~/.ssh/id_rsa_buhlServer


# or

Host *
    ForwardAgent yes
    AddKeysToAgent yes
    IdentityFile ~/.ssh/id_ecdsa
    IdentityFile ~/.ssh/id_rsa
