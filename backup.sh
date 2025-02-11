#!/bin/bash
#定义时间变量
datetime=$(date +%Y%m%d%H%M)

#按照时间创建目录
#mkdir -p /root/MCBackup/MinecraftServerFabricBackup/mc${datetime}/

#将服务端目录的东西（即包括存档在内的文件）备份过来
#cp -r -f /root/MinecraftServerFabric/* /root/MCBackup/MinecraftServerFabricBackup/mc${datetime}/
zip -r -q /root/MinecraftServerFabricBackup/mc${datetime}.zip /root/MinecraftServerFabric/


#统计该备份的大小，并写入home目录下的size.txt文件里
#du -sm /root/MCBackup/MinecraftServerFabricBackup/mc${datetime}/ >> /root/MCBackup/MinecraftServerFabricBackup/size.txt

#压缩成zip文件，并删除目录
#zip -r -q /root/MCBackup/MinecraftServerFabricBackup/mc${datetime}.zip /root/MCBackup/MinecraftServerFabricBackup/mc${datetime}/
#rm -rf /root/MCBackup/MinecraftServerFabricBackup/mc${datetime}/

#删除15天前的备份
deldate=`date -d '-21 day' +%Y%m%d`
rm -rf /root/MinecraftServerFabricBackup/mc${deldate}*

#zip -r -q /root/MinecraftServerFabricBackup20250104.zip /root/MinecraftServerFabric/
