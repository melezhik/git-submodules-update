# SYNOPSIS

Recursively walks through git sub modules kept under some super project 
and fetches changes from related remote repositories 
( `git submodules update --init --remote` command is executed under the hood  )


# INSTALL

    $ sparrow plg git-submodules-update

# USAGE

    # all the list
    $ sparrow plg run git-submodules-update \
    --param directory=/path/to/working/copy/directory/

    # single project
    $ sparrow plg run git-submodules-update \
    --param project=cups \
    --param directory=/path/to/working/copy/directory/

# Parameters

## directory

Should be a path for working copy directory of git super project with git submodules. 

Obligatory. No default values.

## project

If set, only perform action for given git submodule denoted as $project. 

Optional. No default value.

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

