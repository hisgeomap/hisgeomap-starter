. "$(dirname "$0")"/env.config;
DOCKER_ROOT_DIR=$HISGEOMAP_ROOT_DIR/docker

cd $DOCKER_ROOT_DIR;
docker-compose -f $DOCKER_ROOT_DIR/docker-compose.yml build
