echo "Deleting release tag due to failure in previous jobs"
curl -X DELETE \
  -H "Authorization: token $1" \
  https://api.github.com/repos/"$2"/"$3"/git/refs/tags/"$4"