#!/bin/sh

ssh-keygen -t rsa -b 4096 -f credentials/gitolite-admin_id_rsa -N "" -C "gitolite-admin@sandbox"

docker run --rm \
    -e SSH_KEY="$(cat credentials/gitolite-admin_id_rsa.pub)" \
    -e SSH_KEY_NAME="admin" \
    -v $(pwd)/docker/gitolite/keys:/etc/ssh/keys \
    -v $(pwd)/docker/gitolite/git:/var/lib/git \
    jgiannuzzi/gitolite true

cp credentials/gitolite-admin_id_rsa.pub docker/gitolite/keys

ssh-keygen -t rsa -b 4096 -f credentials/gitolite-user_id_rsa -N "" -C "gitolite-user@sandbox"
