# SYNOPSIS

* recursively walks through git submodules

* fetches and merges changes from remote repos ( using `git submodules update --init --remote --merge` command )

* superproject: commit changes applied to sub modules and push them to remote superproject repo

# INSTALL

    $ sparrow plg git-submodules-update

# USAGE

    # all the list
    $ sparrow plg run git-submodules-update

    # single project
    $ sparrow plg run git-submodules-update --param project=foo 

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

