# Let's try out the Vault help command
vault -help

vault server -help

# Now we are going to start Vault in development mode
vault server -dev

# You will see Vault server launch and wait log actions to
# the current console window. Scroll up to find the unseal
# key and the root token. You're going to need the token

# Open a second console and save the token in a variable
# DO NOT USE VAULT_TOKEN for the variable name
# using VAULT_TOKEN will overwrite anything stored in the token helper
export root_token=ROOT_TOKEN_VALUE

# Let's log into the Vault server using our root token
# and the Vault server address. The default launch
# of the development server is listening on the loopback
# address and port 8200
vault login -address="http://127.0.0.1:8200" $root_token

#you can also export the address as an env variable with the name VAULT_ADDR
export VAULT_ADDR=http://127.0.0.1:8200
# then you will only need to run "vault login $root_token"

# As you are authenticated with the root token, you are permitted to the root policy
# Token is stored and a token accessor to be associated with each subcommand

