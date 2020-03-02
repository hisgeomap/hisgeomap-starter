# Currently Supported & Tested Platform:
#   Mac OS X 10.14.6+
#   Ubuntu 18.

# ENV
HISGEOMAP_ROOT_DIR=~/hisgeomap;
HISGEOMAP_MODE=DEV

export HISGEOMAP_ROOT_DIR;
export HISGEOMAP_MODE;


# install required dev tools

# install docker
if ! [ -x "$(command -v docker)" ]; then
    ./prepare-docker.sh
fi

# install yarn
if ! [ -x "$(command -v yarn)" ]; then
    ./prepare-yarn.sh
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

if [ ! $HISGEOMAP_MODE = "DEV" ]; then
    # build
    ./build-front-end.sh
    ./build-back-end.sh
    ./build-docker.sh

    # deploy
    docker stack deploy --compose-file $HISGEOMAP_ROOT_DIR/docker/docker-compose.yml hisgeomap
fi

