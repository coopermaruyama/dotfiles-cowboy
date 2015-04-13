# check if private vars file in dropbox exists at dropbox/sync/private_vars
# [[ -f  ]]

# if it exists, iterate each file and for each do:
# - export variables in global scope prefixed with file name,
#   so private_vars/cfy.sh with my_var="blah" would export cfy_my_var="blah"
