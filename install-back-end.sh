GITHUB_REPO=https://github.com/hisgeomap/hisgeomap-services.git
BACK_END_ROOT_DIR=$HISGEOMAP_ROOT_DIR/back-end

if [ ! -e "$BACK_END_ROOT_DIR" ]; then
    mkdir $BACK_END_ROOT_DIR;
    cd $BACK_END_ROOT_DIR;

    # Install front end
    git init;
    if [ $HISGEOMAP_MODE = "PROD" ]; then
        git fetch $GITHUB_REPO master:master;
        git checkout master;
    else
        git fetch $GITHUB_REPO develop:develop;
        git checkout develop;
    fi
else
    cd $BACK_END_ROOT_DIR;

     # Install front end
    if [ $HISGEOMAP_MODE = "PROD" ]; then
        git pull $GITHUB_REPO master:master;
        git checkout master;
    else
        git pull $GITHUB_REPO develop:develop;
        git checkout develop;
    fi
fi


# install packages
yarn install