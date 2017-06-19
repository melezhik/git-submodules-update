set -e

project=$(config project)
directory=$(config directory)

echo working copy directory: $directory

cd $directory

git pull
git submodule update
git submodule sync

if test -z $project; then
  git submodule update --init --recursive --remote --merge 
else
  echo updating $project ...
  git submodule update --init --remote $project --merge 
fi

