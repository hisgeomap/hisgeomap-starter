. "$(dirname "$0")"/env.config

docker stack deploy --compose-file $HISGEOMAP_ROOT_DIR/docker/docker-compose.yml hisgeomap