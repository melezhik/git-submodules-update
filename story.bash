set -e

project=$(config project)
directory=$(config directory)

echo working copy directory: $directory

cd $directory

git pull

if test -z $project; then
  git submodule sync
  git submodule update --init --recursive --remote --merge 
else
  echo updating $project ...
  git submodule sync $project
  git submodule update --init --merge --remote $project
fi

