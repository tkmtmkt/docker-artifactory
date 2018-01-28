#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
BACKUP_DIR=$SCRIPT_DIR/data/var/opt/jfrog/artifactory/backup
BACKUP_TARGET=$(basename $(ls -tr1 $BACKUP_DIR | tail -1))
BACKUP_NAME=artifactory-backup-$BACKUP_TARGET.tar.gz

tar czf $BACKUP_NAME -C $BACKUP_DIR $BACKUP_TARGET
