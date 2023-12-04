# 拉取源码，编译安装
update:
	git pull origin master && cd build && make -j 4 && make install