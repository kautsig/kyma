#!/usr/bin/env sh

CONFIGURE_GIT=$1
if [$CONFIGURE_GIT == "--configure-git"]; then
    source ${APP_PATH}/config-git.sh
fi

git add ./CHANGELOG.md
git commit -m "Update CHANGELOG.md for version ${LATEST_VERSION}"
git push
gitResult=$?
