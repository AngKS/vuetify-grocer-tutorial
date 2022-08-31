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
git push -f git@github.com:angks/vuetify-grocer-tutorial.git master:gh-pages

# Log success
echo "Deployed to Github Pages!"

cd -