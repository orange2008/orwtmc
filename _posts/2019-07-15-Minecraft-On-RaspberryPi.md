---
title: Minecraft On RaspberryPi
published: true
---

I think there are some people want to build a _Minecraft Server_ And play with your friend.
Now i will teach you to build a _MC Server_ In your _Raspberry Pi 3B+_

**Install Lib**:
```shell
$ sudo apt-get update
$ sudo apt-get install default-jre default-jdk
$ sudo apt-get install wget gcc g++ zip tar unzip
$ cd /
$ cd home
$ cd pi
$ mkdir Minecraft
$ cd Minecraft
$ echo "IP Config" >> ip
$ sudo ifconfig > ip

```
**Start MC Server**
```shell
$ wget --no-check-certificate https://raw.githubusercontent.com/orange2008/postitem/master/MineCraft-Postitem/eula.txt
$$ wget --no-check-certificate https://s3.amazonaws.com/Minecraft.Download/versions/ {Versions} /minecraft_server_{Versions}.jar
$ wget --no-check-certificate https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server_1.12.2.jar
$ mv *.jar server.jar
$ echo "java -Xms512M -Xmx512M -jar server.jar nogui" >> start
$ sudo chmod 777 start
$ sudo chmod +x start
$ sudo ./start
$openjdkCONSOLE $ stop
$ rm -rf server.properties
$ wget --no-check-certificate https://raw.githubusercontent.com/orange2008/postitem/master/MineCraft-Postitem/server.properties
$ sudo ./start

```
__ONLY AVAILABLE ON RASPBERRY PI OR ANY LINUX HOST!!!(NOT CENTOS)__
