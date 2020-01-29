---
title: Convert files via ffmpeg
published: true
---
I think everyone will have some media files.
But sometimes the format may be wrong. Today I will teach everyone to convert.
First, you have to download [ffmpeg](https://ffmpeg.org/download.html). This software supports all major operating systems (Windows 10 is the best for Windows, this tutorial is for Windows 10), and the commands are the same.

After downloading, extract the 3 exe files in the “bin” folder to any position. Non-utf-8 characters cannot appear in the middle of the position. Chinese does not support it. After decompressing, right click on the “This PC” icon, click on “Properties”, then click on “Advanced system settings”, in the “Advanced” column, click on the “Environment Variables” in the lower right corner, the user variable above Inside the “Path” create a new one, the content is the location of your 3 exe files, such as my D:\video, the content is D:\video.

Then open Command Prompt.
Enter
```shell
ffmpeg -i "Source File" "Destination File"
```

Hope can help you!
