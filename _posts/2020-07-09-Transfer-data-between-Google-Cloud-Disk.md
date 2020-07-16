---
title: Transfer data between Google Cloud Disk
published: true
---

I believe everyone has used the Google Cloud **Team Disk**. Everyone will inevitably dump some files. However, Google does not provide a transfer service, and can only create a link on its own. If you cancel the sharing, we will not have it. If the files are large and downloading them one by one is obviously unrealistic, then today I will teach you to transfer them.

## Tools and raw materials

### Google account

### A computer

### A healthy Internet Connection (If you are in a blocked area, you know what I am talking about)

## Tutorial

1. Open [Colaboratory](https://colab.research.google.com) and login to your Google account.
2. Open [Colab Script](https://colab.research.google.com/drive/1i1W9nAzgiDtfA_rmTBcpMpwxVUhwgLsq)![](https://cdn.jsdelivr.net/gh/orange2008/IMGBED/assets/20200709173849.png)

3. **Don’t execute commands here, everyone can see them!** You should click "File" and click "Save a copy in Drive".![](https://cdn.jsdelivr.net/gh/orange2008/IMGBED/assets/20200709174220.png)

4. Now it's time to install the runtime!Click the play button.![](https://cdn.jsdelivr.net/gh/orange2008/IMGBED/assets/20200709174409.png)

5. It’s time to copy our SA (Service Account) to **In a folder called accounts in my Drive**, why use SA, because Google has a limit, each account can not copy more than 750G files per day, so we use multiple users To circumvent this limitation. And this script only supports SA account replication. If you don’t know how to create and use SA, then go to Google or open [This website](https://gsuitems.com/index.php/archives/13/#步骤2生成serviceaccounts) If you do not understand Chinese, then translate it. It should look like this if done.![](https://cdn.jsdelivr.net/gh/orange2008/IMGBED/assets/20200709174949.png)

6. Then we return to the colab page and click "SA账号配置"'s play button. You should authenticate your Google account and get the authentication code and paste it to the input prompt.![](https://cdn.jsdelivr.net/gh/orange2008/IMGBED/assets/20200709175239.png)

​        It may take a moment, when you see "SA配置完成", it means            your SA is configured.

7. It's time to copy some stuff. Click this button. Put your file ID(the string after https:/drive.google.com/drive/folders/) in "文件ID", put your Destination ID(the string after https:/drive.google.com/drive/folders/) in "目标ID". Then the program should start copy.![](https://cdn.jsdelivr.net/gh/orange2008/IMGBED/assets/20200709175604.png)

![](https://cdn.jsdelivr.net/gh/orange2008/IMGBED/assets/20200709175848.png)

8. When you see "拷贝完成", it means your copy is done, you can go and check your files!![](https://cdn.jsdelivr.net/gh/orange2008/IMGBED/assets/20200709180022.png)

![](https://cdn.jsdelivr.net/gh/orange2008/IMGBED/assets/20200709180119.png)



## End

This is all, thanks for watching! I hope this article can help you something.