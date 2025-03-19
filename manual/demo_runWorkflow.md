# helloExpress项目操作教程

## 一、安装未安装的依赖
确保已经安装了以下软件：
- act
- node.js
- npm
- git
- python

## 二、helloExpress的源码树搭建操作
1. 创建项目目录mkdir -p /HD2/dbr/gitWorkflow/demo/helloExpress
cd /HD2/dbr/gitWorkflow/demo/helloExpress2. 初始化git仓库git init3. 创建项目文件
将上述提供的代码文件（app.js、package.json、cross_config.yml、build.sh、run.sh等）复制到当前目录。

4. 安装项目依赖npm install
## 三、由源码树生成github项目的操作
1. 在github上创建一个新的仓库，项目名为`DemoHelloExpress`。
2. 将本地仓库与github仓库关联git remote add origin https://github.com/cislw/DemoHelloExpress.git3. 推送本地代码到github仓库git add .
git commit -m "Initial commit"
git push -u origin main
## 四、act命令行使用
### 使用容器模拟运行act -s GITHUB_TOKEN=your_github_token### 本地直接运行act -P ubuntu-latest=local -s GITHUB_TOKEN=your_github_token```
    