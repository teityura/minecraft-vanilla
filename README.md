# Minecraft-Vanilla on Docker

## git clone

```
mkdir -p ~/containers/
cd ~/containers/
git clone https://github.com/teityura/minecraft-vanilla.git
cd minecraft-vanilla/
```

## マイクラコンテナを起動

```
docker-compose up -d
docker-compose exec minecraft-server ps aux
docker-compose logs -f
```

## マイクラコンテナのメモリサイズを指定

.envを適宜変更 (単位はMB)

- XMS_SIZE (ヒープ領域の初期サイズ)
- XMX_SIZE (ヒープ領域の最大サイズ)

```
vim .env

XMS_SIZE=4096
XMX_SIZE=8192
```
