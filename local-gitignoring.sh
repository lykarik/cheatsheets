# For ignoring some files into local git repo 
# you can use local git config file

# Add that string to alias section in  /your-project/.git/config

ignore = update-index --assume-unchanged
unignore = update-index --no-assume-unchanged
ignored = !git ls-files -v | grep "^[[:lower:]]"

# if alias section doesn't exist, add this to EOF /your-project/.git/config

[alias]
ignore = update-index --assume-unchanged
unignore = update-index --no-assume-unchanged
ignored = !git ls-files -v | grep "^[[:lower:]]"


# Now you can use
#  $git ignore <file> - to ignore it locally
#  $git unignore <file> - to cancel ignoring
#  $git ignored - locally ignore list
