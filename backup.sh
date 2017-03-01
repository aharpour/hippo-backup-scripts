#!/bin/bash
DOCKER_VOLUMES_DIR=/var/lib/docker/volumes
echo "Making a backup of $DOCKER_VOLUMES_DIR/$1_mysql_data"
tar -cvf mysql_backup.tar.gz $DOCKER_VOLUMES_DIR/$1_mysql_data

echo "Making a backup of $DOCKER_VOLUMES_DIR/$1_hippo_repository"
tar -cvf lucene_indexes_backup.tar.gz $DOCKER_VOLUMES_DIR/$1_hippo_repository