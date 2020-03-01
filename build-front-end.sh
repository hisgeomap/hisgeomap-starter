# front end
FRONT_END_ROOT_DIR=$HISGEOMAP_ROOT_DIR/front-end

cd $FRONT_END_ROOT_DIR;
yarn run build;
rm -r $HISGEOMAP_ROOT_DIR/docker/front-end/build;
mv $HISGEOMAP_ROOT_DIR/front-end/build $HISGEOMAP_ROOT_DIR/docker/front-end;