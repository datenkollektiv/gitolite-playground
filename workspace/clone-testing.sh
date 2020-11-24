#!/bin/sh

git clone --config core.sshCommand="ssh -i ../credentials/gitolite-user_id_rsa -p 2222" git@localhost:testing
