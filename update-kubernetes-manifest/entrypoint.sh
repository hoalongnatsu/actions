#!/bin/sh -l

# Clone repo
git clone https://${GIT_USER}:${GIT_PASSWORD}@github.com/${GIT_USER}/${GIT_REPO}.git
cd $GIT_REPO

# Config git
git config --global user.name $GIT_USER
git config --global user.email 'admin@devops.vn'

# Update manifest file
sed -i 's|image: .*|image: ${CONTAINER_REGISTRY}/${IMAGE}:${TAG}|' $MANIFEST_FILE
git add $MANIFEST_FILE

if git diff --staged --quiet; then
  echo "==== There are no new "Commit". ===="
else
  git commit -m "Update image"
  git push origin main
fi