#!/usr/bin/env sh
echo "Changing git settings..."
git config --global user.email "kyma.bot@sap.com"
git config --global user.name "Kyma Bot"
git config --global core.sshCommand 'ssh -i '$SSH_FILE''
