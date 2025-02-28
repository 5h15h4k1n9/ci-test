echo "Deleting release due to failure in previous jobs"
curl -X DELETE \
  -H "Authorization: token $1" \
  https://api.github.com/repos/"$2"/releases/"$3"