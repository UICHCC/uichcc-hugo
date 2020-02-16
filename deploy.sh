#!/bin/bash

echo -e "Deploying updates to GitHub..."

if [ -n "$GITHUB_AUTH_SECRET" ]
then
    touch ~/.git-credentials
    chmod 0600 ~/.git-credentials
    echo $GITHUB_AUTH_SECRET > ~/.git-credentials

    git config credential.helper store
    git config user.email "UICHCC-bot@users.noreply.github.com"
    git config user.name "UICHCC-bot"
fi

git clone https://github.com/UICHCC/uichcc.github.io.git
cd uichcc.github.io
rm -rf *
cd ..

cd public
cp -r public/. uichcc.github.io/

cd uichcc.github.io
git add .
git commit -m "Rebuild site"
git push --force origin HEAD:master