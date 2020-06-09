. "$(dirname "$0")"/env.config;

sudo docker tag hisgeomap-front-end:latest registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-front-end:$HISGEOMAP_VERSION;
sudo docker push registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-front-end:$HISGEOMAP_VERSION;
sudo docker tag hisgeomap-back-end:latest registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-back-end:$HISGEOMAP_VERSION;
sudo docker push registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-back-end:$HISGEOMAP_VERSION;
sudo docker tag hisgeomap-search:latest registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-search:$HISGEOMAP_VERSION;
sudo docker push registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-search:$HISGEOMAP_VERSION;