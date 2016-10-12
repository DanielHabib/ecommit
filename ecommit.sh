function ecommit {
    git add .
    emoji=$(gshuf -n 1 "$PWD/emoji.txt")
    git commit -m "$* $emoji"
}
main () {
    ecommit "$*"
}
# main "$@"
