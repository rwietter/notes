push_main () {
    git add --all
    git commit -m $1
    git push origin main
}

add_commit () {
    git add --all
    git commit -m $1
}

if [[ $2 == 'push_all' ]]
then
  push_main "$4"
elif [[ $2 == 'add_commit' ]]
then
  add_commit "$4"
elif [[ $1 == '--help' ]]
then
  echo "Usage: ./test.sh --op [push_all|add_commit] --msg [commit_message]"
else
  echo "Invalid option"
fi