#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

auto_input_pwd(){

      #param="ls -l"
      echo jin | sudo -S su

}
auto_input_pwd
echo '>>>>授权....'
sudo chmod -R 777 ./.git
echo '>>>>删除Ｇit....'
sudo rm -r ./.git
echo '>>>>初始化Git....'
git init
echo '>>>>添加至Git缓存区....'
git add --all
echo '>>>>提交....'
git commit -am "update"
echo '>>>>更改分支'
git branch -m FishMovie
echo '>>>>添加远程仓库....'
git remote add origin git@github.com:NESPTechnology/AppDownloadCenter.git
echo '>>>>推送至远程仓库....'
git push -vf origin FishMovie

