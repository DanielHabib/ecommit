function ecommit {
    $emoji=$(gshuf -n 1 "emoji.txt")
    git commit -m "$1 $emoji"

}

