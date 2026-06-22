#!/bin/bash

apt update -y
apt install -y curl tar gzip

useradd -m githubrunner || true

mkdir -p /home/githubrunner/actions-runner
cd /home/githubrunner/actions-runner

curl -o actions-runner-linux-x64-2.335.1.tar.gz -L \
https://github.com/actions/runner/releases/download/v2.335.1/actions-runner-linux-x64-2.335.1.tar.gz

tar xzf actions-runner-linux-x64-2.335.1.tar.gz

chown -R githubrunner:githubrunner /home/githubrunner/actions-runner

sudo -u githubrunner ./config.sh \
  --url https://github.com/Rishikakkarji/Application_Pipeline \
  --token A52QJ27L7CYHUN2QFK6IP2LKHEC3S \
  --unattended \
  --replace \
  --name vm-runner

./svc.sh install
./svc.sh start