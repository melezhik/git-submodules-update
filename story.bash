project=$(config project)
directory=$(config directory)

echo working copy directory: $directory

git config --global push.default matching

cd $directory || exit 1


if test -z $project; then

  git submodule update --init --recursive --merge  --remote  || exit 1

else

  echo updating $project ...
  git submodule update --init --merge  --remote $project || exit 1

fi

git commit -a -m "update git submodules"

git push
