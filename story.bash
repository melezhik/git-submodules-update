project=$(config project)
directory=$(config directory)

echo working copy directory: $directory

git config --global push.default matching

cd $directory || exit 1

git pull || exit 1
git submodule --quiet update || exit 1
git submodule --quiet sync || exit 1

if test -z $project; then

  git submodule update --init --recursive --remote  || exit 1
  git submodule foreach git branch -v || exit 1
else

  echo updating $project ...
  git submodule --quiet update --init --remote $project || exit 1
  git submodule status $project || exit 1
fi

git commit -a -m "update git submodules"

git pull || exit 1

git push || exit 1


