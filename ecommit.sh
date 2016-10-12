function ecommit {
    git add .
    echo $PWD
    emoji=$(gshuf -n 1 "{Update With Absolute Path to This Folder}/emoji.txt")
    git commit -m "$* $emoji"
}
main () {
    ecommit "$*"
}
# main "$@"
