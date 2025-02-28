TAG_NAME=$1

if [[ $TAG_NAME =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    VERSION=${TAG_NAME:1}
else
    VERSION=${TAG_NAME//-SNAPSHOT/}
fi

MINOR_VERSION=$(echo "$VERSION" | awk -F. '{print $1"."$2+1".0"}')
PATCH_VERSION=$(echo "$VERSION" | awk -F. '{print $1"."$2"."$3+1}')
PATCH_BRANCH_NAME=$(echo "$PATCH_VERSION" | awk -F. '{print $1"."$2"}')

{
  echo "VERSION=$VERSION";
  echo "MINOR_VERSION=$MINOR_VERSION";
  echo "PATCH_VERSION=$PATCH_VERSION";
  echo "PATCH_BRANCH_NAME=$PATCH_BRANCH_NAME";
} >> "$GITHUB_ENV"