#!/usr/bin/env sh

source ${APP_PATH}/variables.sh

CONFIGURE_GIT=$1
if [$CONFIGURE_GIT == "--configure-git"]; then
    source ${APP_PATH}/config-git.sh
fi

source ${APP_PATH}/config-setup.sh

LAST_VERSION_TAG=$(git describe --abbrev=0 --tags)
echo "Getting new changes starting from the '${LAST_VERSION_TAG}' tag..."
mkdir -p ${RELEASE_CHANGELOG_FILE_DIRECTORY}
lerna-changelog --from=${LAST_VERSION_TAG} | sed -e "s/## Unreleased/## ${LATEST_VERSION}/g" > ${RELEASE_CHANGELOG_FILE_PATH}

source ${APP_PATH}/config-cleanup.sh
