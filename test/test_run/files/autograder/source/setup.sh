#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt-get clean
apt-get update
apt-get install -y wget pandoc texlive-xetex texlive-fonts-recommended texlive-plain-generic \
    build-essential libcurl4-gnutls-dev libxml2-dev libssl-dev libgit2-dev texlive-lang-chinese

# install mamba
if [ $(uname -p) = "arm" ] || [ $(uname -p) = "aarch64" ] ; \
    then wget -nv https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-aarch64.sh \
        -O test/test_run/files/autograder/source/mamba_install.sh ; \
    else wget -nv https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh \
        -O test/test_run/files/autograder/source/mamba_install.sh ; \
fi
chmod +x test/test_run/files/autograder/source/mamba_install.sh
test/test_run/files/autograder/source/mamba_install.sh -b
echo "export PATH=/root/mambaforge/bin:\$PATH" >> /root/.bashrc

export PATH=/root/mambaforge/bin:$PATH
export TAR="/bin/tar"

# install dependencies with mamba
mamba env create -f test/test_run/files/autograder/source/environment.yml

# set mamba shell
mamba init --all
