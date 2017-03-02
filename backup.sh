#!/bin/bash
DOCKER_VOLUMES_DIR=/var/lib/docker/volumes
echo "Making a backup of $DOCKER_VOLUMES_DIR/$1_mysql_data"
tar -C $DOCKER_VOLUMES_DIR/$1_mysql_data  -czvf mysql_backup.tar.gz _data

echo "Making a backup of $DOCKER_VOLUMES_DIR/$1_hippo_repository"
tar -C $DOCKER_VOLUMES_DIR/$1_hippo_repository -czvf lucene_indexes_backup.tar.gz _data
