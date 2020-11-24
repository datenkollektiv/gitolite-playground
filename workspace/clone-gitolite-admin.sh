#!/bin/sh

git clone --config core.sshCommand="ssh -i ../credentials/gitolite-admin_id_rsa -p 2222" git@localhost:gitolite-admin
