# SYNOPSIS

* recursively walks through git submodules kept under some superproject

* for every git submodule:

  * fetches changes from related remote repository
  * merge changes into local repository
  * `git submodules update --init --remote --merge` command is executed under the hood 

* superproject: commit changes applied to sub modules and push them to remote superproject repository

# INSTALL

    $ sparrow plg git-submodules-update

# USAGE

    # all the list
    $ sparrow plg run git-submodules-update \
    --param directory=/path/to/working/copy/directory/

    # single project
    $ sparrow plg run git-submodules-update \
    --param project=foo \
    --param directory=/path/to/working/copy/directory/

# Parameters

## directory

Should be a path for working copy directory of git superproject with git submodules. Obligatory. No default values.

## project

If set, only perform action for given git submodule denoted as $project. Optional. No default value.

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

