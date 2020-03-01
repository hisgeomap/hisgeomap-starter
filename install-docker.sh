GITHUB_REPO=https://github.com/TreeNewBeeing/hisgeomap-docker.git
DOCKER_ROOT_DIR=$HISGEOMAP_ROOT_DIR/docker

if [ ! -e "$DOCKER_ROOT_DIR" ]; then
    mkdir $DOCKER_ROOT_DIR;
    cd $DOCKER_ROOT_DIR;

    # Install front end
    git init;
    git fetch $GITHUB_REPO master:master;
    git checkout master;
else
    cd $DOCKER_ROOT_DIR;
    git pull $GITHUB_REPO master:master;
    git checkout master;

fi