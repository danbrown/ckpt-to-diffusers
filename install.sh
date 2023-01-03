#!/bin/bash

pip install -r requirements.txt

apt upgrade -y
apt update -y

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

apt-get install git-lfs
apt-get install wget

git lfs install