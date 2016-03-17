#!/usr/bin/env bash
REMOTEUSER=$1
REMOTEHOST=$2
REMOTEHOME=$3
LOCALHOME=$4

echo "Trying to upload $LOCALHOME/.prompt to $REMOTEUSER@$REMOTEHOST:$REMOTEHOME/"

rsync -ae ssh --delete $LOCALHOME/.prompt $REMOTEUSER@$REMOTEHOST:$REMOTEHOME/
# ssh $REMOTEUSER@$REMOTEHOST "bash $REMOTEHOME/.prompt/setup-host"
echo "Uploaded $LOCALHOME/.prompt to $REMOTEUSER@$REMOTEHOST:$REMOTEHOME/"
