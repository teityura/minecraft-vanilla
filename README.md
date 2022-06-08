# Minecraft-Vanilla on Docker

## git clone

```
mkdir -p ~/containers/
cd ~/containers/
git clone https://github.com/teityura/minecraft-vanilla.git
cd minecraft-vanilla/
```

## マイクラコンテナを起動する

```
docker-compose up -d
docker-compose exec minecraft-server ps aux
docker-compose logs -f
```

## マイクラコンテナのメモリサイズを変更する

- .envを編集する

``` diff:.env
# メモリサイズを下げる場合

-XMS_SIZE=4096  # XMS_SIZE (ヒープ領域の初期サイズ)
-XMX_SIZE=8192  # XMX_SIZE (ヒープ領域の最大サイズ)
+XMS_SIZE=2048
+XMX_SIZE=4096
```

## マイクラのバージョンを変更する

- jarファイルのダウンロードURLを確認する
- .envを編集する

``` diff:.env
# バージョンを1.16.5にする場合

-MINECRAFT_VER=1.19.0
-JAR_URL='https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar'
+MINECRAFT_VER=1.16.5
+JAR_URL='https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar'
```

jarファイルのダウンロードURLを確認する際、  
[MCVersions.net](https://mcversions.net/) さんで `STABLE RELEASE` の一覧から欲しいバージョンを選択して、  
`Download Server Jar` のリンクをコピーするとよさそうです。

## 変更を反映する

```
docker-compose down
docker-compose up -d
docker-compose logs -f
```
