#   Extract Hisgeomap package and Run docker
#   Tested Platform:
#       Ubuntu 18.04
root_dir="/root";
pkg_dir="${root_dir}/deploy/server-env";
tar -xf "${root_dir}/hisgeomap.tar.gz" -C "${root_dir}/"
sudo docker load -i "${pkg_dir}/hisgeomap-front-end.tar";
sudo docker load -i "${pkg_dir}/hisgeomap-back-end.tar";
sudo docker load -i "${pkg_dir}/hisgeomap-search.tar";