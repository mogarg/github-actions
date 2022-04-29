
last_tag=$(git tag -l | head -1 | egrep "^[0-9]+.[0-9]+.[0-9]+$")

patch=$(echo $last_tag | cut -d "." -f3)
version=$(echo $last_tag | cut -d "." -f1,2)

patch=`expr $patch + 1`
next_version="$version.$patch"

echo $next_version
