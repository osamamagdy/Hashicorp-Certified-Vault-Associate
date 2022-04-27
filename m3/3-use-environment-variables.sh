# Adding the `--address` flag everytime is a drag. Let's
# use environment variable so the vault CLI knows where
# to contact the Vault server.

export VAULT_ADDR=http://127.0.0.1:8200

# Cool, now let's run a command without the Vault server 
# `--address` flag

vault status

#VAULT_SKIP_VERIFY --> In case you're using self signed TLS certificates in development servers, you can disable the verification step done by vault
#VAULT_FORMAT --> Like Terraform, there can be outputs from vault commands. Here you can set the output format to JSON so it can be parsed easily