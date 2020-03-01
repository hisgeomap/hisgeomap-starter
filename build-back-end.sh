# back end
BACK_END_ROOT_DIR=$HISGEOMAP_ROOT_DIR/back-end

cd $BACK_END_ROOT_DIR;
yarn run build;
rm -r $HISGEOMAP_ROOT_DIR/docker/back-end/build;
mv $HISGEOMAP_ROOT_DIR/back-end/build $HISGEOMAP_ROOT_DIR/docker/back-end;