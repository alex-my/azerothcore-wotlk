# 编译

参考地址: https://www.azerothcore.org/wiki/macos-core-installation

-   先创建一个文件夹接收编译后的产物

如本项目存于: /Users/alex/MyWork/wow/azerothcore-wotlk

目标文件夹为: /Users/alex/MyWork/wow/azeroth-server

-   进入源码 build 目录

```
mkdir build
cd build
```

注意替换`DCMAKE_INSTALL_PREFIX`为目标产物所在文件夹

```
export OPENSSL_ROOT_DIR=$(brew --prefix openssl@3)
cmake ../ \
-DCMAKE_INSTALL_PREFIX=/Users/alex/MyWork/wow/azeroth-server/  \
-DTOOLS_BUILD=all \
-DSCRIPTS=static \
-DMYSQL_ADD_INCLUDE_PATH=/usr/local/include/mysql \
-DMYSQL_LIBRARY=/usr/local/opt/mysql/lib/libmysqlclient.dylib \
-DREADLINE_INCLUDE_DIR=/usr/local/opt/readline/include \
-DREADLINE_LIBRARY=/usr/local/opt/readline/lib/libreadline.dylib \
-DOPENSSL_INCLUDE_DIR="$OPENSSL_ROOT_DIR/include" \
-DOPENSSL_SSL_LIBRARIES="$OPENSSL_ROOT_DIR/lib/libssl.dylib" \
-DOPENSSL_CRYPTO_LIBRARIES="$OPENSSL_ROOT_DIR/lib/libcrypto.dylib"
```
