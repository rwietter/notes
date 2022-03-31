push_main () {
    git add --all
    git commit -m $1
    git push origin main
}

add_commit () {
    git add --all
    git commit -m $1
}

if [[ $op -eq 'push_all' ]]
then
  push_main "$4"
elif [[ $op -eq 'add_commit' ]]
then
  add_commit "$4"
elif [[ $op -eq '--help' ]]
then
  echo "Usage: ./test.sh [push_all|add_commit] [commit_message]"
else
  echo "Not a valid option"
fi