. "$(dirname "$0")"/env.config;

sudo docker pull registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-front-end:$HISGEOMAP_VERSION
sudo docker tag registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-front-end:$HISGEOMAP_VERSION hisgeomap-front-end

sudo docker pull registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-back-end:$HISGEOMAP_VERSION
sudo docker tag registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-back-end:$HISGEOMAP_VERSION hisgeomap-back-end

sudo docker pull registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-search:$HISGEOMAP_VERSION
sudo docker tag registry.cn-beijing.aliyuncs.com/hisgeomap/hisgeomap-search:$HISGEOMAP_VERSION hisgeomap-search
