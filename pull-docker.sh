. "$(dirname "$0")"/env.config;

sudo docker tag hisgeomap-front-end registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-front-end:$HISGEOMAP_VERSION
sudo docker push registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-front-end:$HISGEOMAP_VERSION
sudo docker tag hisgeomap-back-end registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-back-end:$HISGEOMAP_VERSION
sudo docker push registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-back-end:$HISGEOMAP_VERSION
sudo docker tag hisgeomap-search registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-search:$HISGEOMAP_VERSION
sudo docker push registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-search:$HISGEOMAP_VERSION