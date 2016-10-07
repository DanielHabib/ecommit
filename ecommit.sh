function ecommit {
    emoji=$(gshuf -n 1 "emoji.txt")
    echo $emoji
    echo "$*"
    git commit -m "$* $emoji"
}

ecommit "$*"
