function getEmoji {
    emoji=$(curl -s "Accept: application/json" https://api.github.com/emojis | jq -r 'keys' | gshuf --head-count=1 | sed 's/,$//')
}

function ecommit {
    git add .
    getEmoji
    emojiCommit=`python3.5 -c "print('$* ' +':{0}:'.format( $emoji))"`
    echo "Generated Emoji: "$emoji
    git commit -m $emojiCommit
}

main () {
    initiateMenu
    ecommit "$*"
}


# main "$@"


