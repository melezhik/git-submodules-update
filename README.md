# SYNOPSIS

1) recursively walks through git submodules
2) fetches changes from remote repos ( using git submodules update --init --remote --merge )
3) merge them 
4) superproject: commit changes applied to sub modules and push to remote superproject repo

# INSTALL

    $ sparrow plg git-submodules-update

# USAGE

    # all the list
    $ sparrow plg run git-submodules-update

    # single project
    $ sparrow plg run git-submodules-update --param project=foo 

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

