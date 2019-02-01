#!/bin/bash

# 多PHP版本,切换工具.
_PHP_VERSIONS=""

# 可以自己定义其他版本PHP,放在 ~/.phps文件中 php56@/xxx/路径... 换行,这样
if [[ -f $HOME/.phps ]]
then
	_PHP_VERSIONS="$_PHP_VERSIONS $(cat $HOME/.phps|tr "\n" " ")"
fi

if [[ -n $(command -v brew) ]]
then
	_PHP_VERSIONS="$_PHP_VERSIONS $(ls /opt/local/bin |grep -E 'php[0-9]*$' |tr "\n" " " )"
fi

echo $_PHP_VERSIONS

for _PHP_VERSION in $(echo $_PHP_VERSIONS | tr " " "\n")
do
	_PHP_REPOSITORIES=("${_PHP_REPOSITORIES[@]}" $_PHP_VERSION)
done

TODO : 还没写完...