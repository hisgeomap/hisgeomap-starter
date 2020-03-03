. "$(dirname "$0")"/env.config

GITHUB_REPO=https://github.com/hisgeomap/hisgeomap-web.git
FRONT_END_ROOT_DIR=$HISGEOMAP_ROOT_DIR/front-end

if [ ! -e "$FRONT_END_ROOT_DIR" ]; then
    mkdir $FRONT_END_ROOT_DIR;
    cd $FRONT_END_ROOT_DIR;

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
    cd $FRONT_END_ROOT_DIR;

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