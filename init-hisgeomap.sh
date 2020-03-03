# Currently Supported & Tested Platform:
#   Mac OS X 10.14.6+
#   Ubuntu 18.

. "$(dirname "$0")"/env.config;


# install required dev tools

# install docker
if ! [ -x "$(command -v docker)" ]; then
    $HISGEOMAP_SCRIPTS_DIR/prepare-docker.sh
fi

# install docker-compose
if ! [ -x "$(command -v docker-compose)" ]; then
    $HISGEOMAP_SCRIPTS_DIR/prepare-docker-compose.sh
fi

# install yarn
if ! [ -x "$(command -v yarn)" ]; then
    $HISGEOMAP_SCRIPTS_DIR/prepare-yarn.sh
fi


# prepare
if [ -e "$HISGEOMAP_ROOT_DIR" ]; then
    echo "Found Project Root Directory: $HISGEOMAP_ROOT_DIR."
else
    echo "Creating Root Directory for the project: $HISGEOMAP_ROOT_DIR."
    mkdir $HISGEOMAP_ROOT_DIR
fi

# install
$HISGEOMAP_SCRIPTS_DIR/install-front-end.sh
$HISGEOMAP_SCRIPTS_DIR/install-back-end.sh
$HISGEOMAP_SCRIPTS_DIR/install-docker.sh

# if [ ! $HISGEOMAP_MODE = "DEV" ]; then
    # build
    $HISGEOMAP_SCRIPTS_DIR/build-front-end.sh
    $HISGEOMAP_SCRIPTS_DIR/build-back-end.sh
    $HISGEOMAP_SCRIPTS_DIR/build-docker.sh

    # deploy
    $HISGEOMAP_SCRIPTS_DIR/deploy.sh
# fi

