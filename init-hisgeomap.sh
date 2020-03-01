# $1 : mode("DEPLOY", "START")
# $2 : proudction mode("DEV", "PROD")

# ENV
HISGEOMAP_ROOT_DIR=~/hisgeomap;
HISGEOMAP_MODE=DEV

export HISGEOMAP_ROOT_DIR;
export HISGEOMAP_MODE;


# install required dev tools
if [ "$1" = "START" ];
then
    # install docker
    ./prepare-docker.sh

    # create swapfile
    ./prepare-swap.sh

fi


# prepare
if [ -e "$HISGEOMAP_ROOT_DIR" ]; then
    echo "Found Project Root Directory: $HISGEOMAP_ROOT_DIR."
else
    echo "Creating Root Directory for the project: $HISGEOMAP_ROOT_DIR."
    mkdir $HISGEOMAP_ROOT_DIR
fi

# install
./install-front-end.sh
./install-back-end.sh
./install-docker.sh

if [ ! "$2" = "DEV" ]; then
    # build
    ./build-front-end.sh
    ./build-back-end.sh
    ./build-docker.sh

    # deploy
    docker stack deploy --compose-file $HISGEOMAP_ROOT_DIR/docker/docker-compose.yml hisgeomap
fi

