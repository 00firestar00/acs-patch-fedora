#!/bin/bash

wget -O acso.patch https://gitlab.com/Queuecumber/linux-acs-override/raw/master/workspaces/5.6.12/acso.patch
echo "From: Evan Jarrett <evan@evanjarrett.com>
Subject: [PATCH] acso patch" | cat - acso.patch > tmp && mv tmp acso.patch
./scripts/newpatch.sh acso.patch
echo "---" >> acso.patch
make release
git config --global commit.gpgsign false
fedpkg local
git config --global commit.gpgsign true
