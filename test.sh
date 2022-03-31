push_main () {
  git add --all
  git commit -m "..."
  git push origin main
}

if [ $2 = "push_all" ]; then
  push_main
else
  echo "Not a valid option"
fi