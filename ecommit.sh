function ecommit {
    git add .
    emoji=$(gshuf -n 1 "/Users/daniel.habib/Repos/ecommit/emoji.txt")
    git commit -m "$* $emoji"
}
main () {
    ecommit "$*"
}
# main "$@"
