#!/bin/bash

# Copy the example config if one does not exist

if [ ! -f $SNAP_COMMON/config.yaml ]; then
    cp $SNAP/config.example.yaml $SNAP_COMMON/config.yaml
    echo "Copying example config to ${SNAP_COMMON}/config.yaml"
fi

# Execute the dex daemon

exec $SNAP/dex serve $SNAP_COMMON/config.yaml "$@"
