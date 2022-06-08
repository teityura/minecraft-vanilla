#!/bin/sh

set -ex

XMS_SIZE=${1:-4096} # ヒープ領域の初期サイズを指定
XMX_SIZE=${2:-8192} # ヒープ領域の最大サイズを指定

# eula.txt を作成
test -e ./eula.txt || echo 'eula=true' > ./eula.txt

# ルートディレクトリで /start-server.sh を実行して
# ルートディレクトリの /server.jar を実行する
java -Xms${XMS_SIZE}M -Xmx${XMX_SIZE}M -jar /server.jar nogui

exit 0