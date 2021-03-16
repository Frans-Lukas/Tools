gitta() {
    git add .
    git status
    while true; do
        read -p "Push, y/n?" yn
        case $yn in
            [Yy]* ) break;;
            [Nn]* ) return;;
            * ) echo "Please answer yes or no.";;
        esac
    done
    git commit -m "$1"
    git pull
    git push
}

