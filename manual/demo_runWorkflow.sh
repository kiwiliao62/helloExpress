#!/bin/bash

# 安装依赖
npm install

# 初始化git仓库
git init

# 添加远程仓库
git remote add origin https://github.com/cislw/DemoHelloExpress.git

# 添加所有文件到暂存区
git add .

# 提交更改
git commit -m "Initial commit"

# 推送代码到github
git push -u origin main

# 根据配置文件选择运行方式
RUNNER_ENV=$(yq e '.runner_env' cross_config.yml)
if [ "$RUNNER_ENV" == "action" ]; then
    echo "Running on GitHub Actions"
elif [ "$RUNNER_ENV" == "act" ]; then
    act -s GITHUB_TOKEN=your_github_token
elif [ "$RUNNER_ENV" == "act-local" ]; then
    act -P ubuntu-latest=local -s GITHUB_TOKEN=your_github_token
else
    echo "Invalid runner_env in cross_config.yml"
fi    