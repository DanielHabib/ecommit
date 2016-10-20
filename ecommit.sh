function getEmoji {
    emoji=$(curl -s "Accept: application/json" https://api.github.com/emojis | jq -r 'keys' | gshuf --head-count=1 | sed 's/,$//')
}

function ecommit {
    git add .
    getEmoji
    emojiCommit=`python3.5 -c "print ':{0}:'.format('$emoji')"`
    python -c "import os; os.system('git commit -m {$emojiCommit}')"
}

main () {
    ecommit "$*"
}


# main "$@"


