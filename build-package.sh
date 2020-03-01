
cur_folder=$(dirname $0);
tar_folder="${cur_folder}/../deploy/server-env";
package_folder="${cur_folder}/../deploy";
cp "${cur_folder}/../docker/docker-compose.yml" "${tar_folder}";
docker save -o "${tar_folder}/hisgeomap-front-end.tar" hisgeomap-front-end;
docker save -o "${tar_folder}/hisgeomap-back-end.tar" hisgeomap-back-end;
docker save -o "${tar_folder}/hisgeomap-search.tar" hisgeomap-search;

tar -czvf "${package_folder}/hisgeomap.tar.gz" "${tar_folder}"