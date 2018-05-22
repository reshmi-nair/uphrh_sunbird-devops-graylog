#!/bin/sh

set -ex

commit_ref=${1:-release-1.7}
sunbird_devops_dir_name=sunbird-devops
[[ -d $sunbird_devops_dir_name ]] || git clone https://github.com/project-sunbird/sunbird-devops -b $commit_ref; exit 0;
cd $sunbird_devops_dir_name
git reset --hard
git clean -fd
git checkout -3 "$commit_ref"