#!/bin/bash
DOCKER_VOLUMES_DIR=/var/lib/docker/volumes
[ ! -d "$DOCKER_VOLUMES_DIR/$1_mysql_data" ] && \
echo "Creating Directory DOCKER_VOLUMES_DIR/$1_mysql_data/_data" && \
mkdir -p $DOCKER_VOLUMES_DIR/$1_mysql_data/_data

echo "Deleting $DOCKER_VOLUMES_DIR/$1_mysql_data/_data"
rm -rf $DOCKER_VOLUMES_DIR/$1_mysql_data/_data
echo "Unpacking mysql_backup.tar.gz into $DOCKER_VOLUMES_DIR/$1_mysql_data"
tar -xzvf mysql_backup.tar.gz -C $DOCKER_VOLUMES_DIR/$1_mysql_data

[ ! -d "$DOCKER_VOLUMES_DIR/$1_hippo_repository" ] && \
echo "Creating Directory DOCKER_VOLUMES_DIR/$1_hippo_repository/_data" && \
echmkdir -p $DOCKER_VOLUMES_DIR/$1_hippo_repository/_data

echo "Deleting $DOCKER_VOLUMES_DIR/$1_hippo_repository/_data"
rm -rf $DOCKER_VOLUMES_DIR/$1_hippo_repository/_data
echo "Unpacking lucene_indexes_backup.tar.gz into $DOCKER_VOLUMES_DIR/$1_hippo_repository"
tar -xzvf lucene_indexes_backup.tar.gz -C $DOCKER_VOLUMES_DIR/$1_hippo_repository
