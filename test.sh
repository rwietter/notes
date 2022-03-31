push_main () {
  git add --all
  git commit -m $1
  git push origin main
}

if [ $2 = "push_all" ]; then
  push_main "$4"
else
  echo "Not a valid option"
fi