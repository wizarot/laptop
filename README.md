# 这是什么

给新同事快速安装配置 OS X 开发环境的脚本.

别人也有写,但是不合用. 而且都是英文的,大家英文不够好. 我弄一个中文版.

这样你可以自己阅读脚本代码,同时也可以在这个基础上改出适合自己的版本. 欢迎fork!

本来打算写一个mac使用指南,但是因为事儿太多,这个计划无限拖到后面.但东西总是要用的,不能等写出来. 我先弄这样一个东西,里面都是精华啊!

# 为什么要自己弄一个

**中文的!中文的!中文的!**

# 怎么用

远程执行或clone下来自己改改在执行都可以:
```bash
git clone git@github.com:wizarot/laptop.git
```

脚本特点: 每一步执行都有中文提示告诉你接下来要做什么? 如果你不想装这个就跳过去.或者把这步代码删了就好.

我这个就是给新同事用的,所以不能完全自动化,请谅解~

install_base  : 安装基本的环境: ssh key, brew ,port(Mac上的另一种软件安装工具-用来装php的) , zsh 和 oh_my_zsh

install_app  : 安装有用的软件: iTerm2 和 sublime等.  我想到的都会加上,你可以自行决定是否安装.(我在下面单独开一节,介绍将要安装的软件功能和简单用法)

(TODO: )install_config: 安装环境配置,主题等:  放点我自己的系统配置,是否放到这里还没想好.

install_php  : 安装PHP开发环境: Mysql,Redis,Nginx,和各种PHP版本:5.4/5.6/7.0/7.2 和常用扩展. 我会搭配一些配置文件和使用脚本,放心!都会有中文说明.

TODO: 安装过程如此简单,细节过年都休假没法问别人.所以就先这样了..
```
node > brew install node
python > brew install python 
java > brew install java
golang > brew install go
```

## install_app描述:

### iterm2软件:
![image.png](https://upload-images.jianshu.io/upload_images/316824-8f7f95e5eca06903.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
### sublime3:
![image.png](https://upload-images.jianshu.io/upload_images/316824-dd5db2fe0163364b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
### tldr:
tldr=too lang don't read.(man说明书,太长没法读) ->我还做了别名 help xxx也可以用.
![image.png](https://upload-images.jianshu.io/upload_images/316824-b33b35ce819c99b2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
这个东西可以帮你直接用举例子的方式,明白命令行中常见的一些命令是怎么用的.
### 访达 的预览:
我们在访达中,选择文件按空格. 是能预览这个文件内容的. 但是很多开发人员才用的文件一般都不支持预览.我们解决下.
例如Markdown文件,看下效果:
![image.png](https://upload-images.jianshu.io/upload_images/316824-4b4a505993fafb9d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
### wget:
命令行下载工具.
### youtube-dl:
命令行下,可以用来下载youku,youtube,bilibili等的视频:
```
> youtube-dl https://www.youtube.com/watch?v=oHg5SJYRHA0
```
### autojump命令行j跳转到之前常去的目录
![Kapture 2019-02-04 at 12.32.53.gif](https://upload-images.jianshu.io/upload_images/316824-7c46d5feef5f57e3.gif?imageMogr2/auto-orient/strip)
### tree:
安装tree命令,能方便的在命令行看到目录的树形结构.
![image.png](https://upload-images.jianshu.io/upload_images/316824-9326c70336a32da4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
## ccat:
cat命令的升级版,将会产生美化的代码,json等
![image.png](https://upload-images.jianshu.io/upload_images/316824-3b0e80c8659fbc79.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
### launchrocket:
管理系统自启动服务的软件.
## sequel-pro-nightly:
数据库图形客户端,免费的.
![image.png](https://upload-images.jianshu.io/upload_images/316824-2c1db77bfb2c6ae4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
### sourcetree(git的图形管理工具)
![image.png](https://upload-images.jianshu.io/upload_images/316824-abcb728a213f1590.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


#注意事项

基本上随意安装,顶多报个错误.

你要是实在解决不了请来提issue. 我有空帮您看看,你要自己解决了也欢迎PR.或者给个issue也行. 自己公司同事就直接过来找我.

生成ssh key: 你的密钥,以后登录各种服务器和github之类用的.请务必妥善保存.,这里面英文不懂就复制下来查查,别乱填.