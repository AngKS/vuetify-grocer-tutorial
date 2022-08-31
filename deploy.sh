# abort on errors
set -e

# build file
npm run build

# navigate into the build output directory
cd dist

git add -A

# get current time
time=$(date +%Y%m%d%H%M%S)

git commit -m "[Deploy] - $time"

# push to repo gh-pages branch
git push origin gh-pages

# Log success
echo "Deployed to Github Pages!"

cd -