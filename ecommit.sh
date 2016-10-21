function menu {
emoji=""
PS3="Please choose an option "
select option in InitialCommit VersionTag Feature Bugfix Metadata Refactor Documentation Internationalization Performance Cosmetic Tooling Tests Deprecation WIP;
do
    case $option in
        InitialCommit) 
            emoji=":tada:"
            break;;
        VersionTag)
            emoji=":bookmark:"
            break;;
        Feature)
            emoji=":sparkels:"
            break;;
        Bugfix)
            emoji=":bug:"
            break;;
        Metadata)
            emoji=":card_index:"
            break;;
        Refactor)
            emoji=":package:"
            break;;

        Documentation)
            emoji=":books:"
            break;;

        Internationalization)
            emoji=":globe_with_meridians:"
            break;;

        Performance)
            emoji=":racehorse:"
            break;;

        Cosmetic)
            emoji=":lipstick:"
            break;;

        Tooling)
            emoji=":wrench:"
            break;;

        Tests)
            emoji=":rotating_light:"
            break;;

        Deprecation)
            emoji=":poop:"
            break;;

        WIP)
            emoji=":construction:"
            break;;

        stay|wait) 
            echo "Standing by"
            break;;

        quit)
            break;;
    esac
        
done
}

function getRandomEmoji {
    emoji=$(curl -s "Accept: application/json" https://api.github.com/emojis | jq -r 'keys' | gshuf --head-count=1 | sed 's/,$//')
}

function ecommit {
    git add .
    # getRandomEmoji
    menu
    emojiCommit=`python3.5 -c "print('$* ' +'{0}'.format( '$emoji'))"`
    echo "Generated Emoji: "$emoji
    git commit -m $emojiCommit
}

main () {
    initiateMenu
    ecommit "$*"
}


# main "$@"


