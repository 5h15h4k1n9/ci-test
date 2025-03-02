if [[ $1 =~ ^[0-9]+\.[0-9]+\.0$ ]]; then
    BRANCH_NAME=master
else
    BRANCH_NAME=patch/$2
fi
echo "BRANCH_NAME=$BRANCH_NAME" >> "$GITHUB_ENV"