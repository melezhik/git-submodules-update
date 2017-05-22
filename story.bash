set -e

project=$(config project)
directory=$(config directory)

echo working copy directory: $directory

cd $directory

gitt pull
git submodule update
git submodule sync

if test -z $project; then
  git submodule update --init --recursive --remote
else
  echo updating $project ...
  git submodule update --init --remote $project
fi

