TAG_NAME=$1

if [[ $TAG_NAME =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    VERSION=${TAG_NAME:1}
else
    VERSION=${TAG_NAME//-SNAPSHOT/}
fi

MINOR_VERSION=$(echo "$VERSION" | awk -F. '{print $1"."$2+1".0"}')
PATCH_VERSION=$(echo "$VERSION" | awk -F. '{print $1"."$2"."$3+1}')

echo "VERSION=$VERSION;MINOR_VERSION=$MINOR_VERSION;PATCH_VERSION=$PATCH_VERSION" >> "$GITHUB_ENV"