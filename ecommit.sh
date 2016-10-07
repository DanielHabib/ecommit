function ecommit {
    emoji=$(gshuf -n 1 "emoji.txt")
    git commit -m "$* $emoji"
}
main () {
    ecommit "$*"
}
main "$@"
