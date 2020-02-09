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
```

Please replace your version in {Versions}

```shell
$$ wget --no-check-certificate https://s3.amazonaws.com/Minecraft.Download/versions/ {Versions} /minecraft_server_{Versions}.jar
```
If you don't want to use original server, you can just download whatever core you want, and put it into this folder.
I use 1.12.2.

```shell
$ wget --no-check-certificate https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server_1.12.2.jar
$ mv *.jar server.jar
```

```shell
$ echo "java -Xms{Minimal RAM} -Xmx{Maximum RAM} -jar server.jar nogui" >> start
```
Please replace the minimal ram in {Minimal RAM}, replace the maximum ram in {Maximum RAM}. I will use 1GB

```shell
$ echo "java -Xms1G -Xmx1G -jar server.jar nogui" >> start
```

I recommended you to set a same value.Because if all same, your memory will suspend and not __jump__ anymore.

```shell
$ sudo chmod 777 start
$ sudo chmod +x start
$ sudo ./start
$openjdkCONSOLE $ stop
$ rm -rf server.properties
$ wget --no-check-certificate https://raw.githubusercontent.com/orange2008/postitem/master/MineCraft-Postitem/server.properties
$ sudo ./start
```
Bam, your mc server is done and launched!
The properties file is download from my website, i pre-configured, if you need to change more, you can google or bing.