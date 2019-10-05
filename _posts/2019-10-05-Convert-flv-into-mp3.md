---
title: Convert *.flv to *.mp3
published: true
---
I think you may have some flv video files, such as mv.flv, but these files are outdated and require _Adobe Flash Player_, and if this is MV, it is not convenient to play, so today I will teach you how to convert flv files. For mp3 audio files.

First, you have to download [ffmpeg](http://ffmpeg.org/download.html). This software supports all major operating systems (Windows 10 is the best for Windows, this tutorial is for Windows 10), and the commands are the same.

After downloading, extract the 3 exe files in the "bin" folder to any position. Non-utf-8 characters cannot appear in the middle of the position. Chinese does not support it. After decompressing, right click on the "This PC" icon, click on "Properties", then click on "Advanced system settings", in the "Advanced" column, click on the "Environment Variables" in the lower right corner, the user variable above Inside the "Path" create a new one, the content is the location of your 3 exe files, such as my D:\video, the content is D:\video.

Then press Windows+R and type cmd.
Then determine the location of your flv file, output the mp3 file address, the following is the command, a simple substitute address can be used.
```shell
ffmpeg -i "flv input address" -q:a 5 "mp3 output address"
```
Don't forget the double quotes! ! !
For example, my input is C:\Users\Programmer\Desktop\video.flv

The output is C:\audio.mp3

Then the instruction is
```shell
ffmpeg -i "C:\Users\Programmer\Desktop\video.flv" -q:a 5 "C:\audio.mp3"
```
I hope to help everyone!
Command source: [StackOverFlow](https://stackoverflow.com/questions/13920230/ffmpeg-command-line-for-converting-flv-to-mp3-using-vbr-128).
