﻿---
title: IT课程，从入门到放弃？
date: 2016-11-24T00:00:00+08:00
author: Destiny
featurePhoto: true
subtitle: "别放弃，还能抢救一下"
feature_photo_url: "https://i.loli.net/2018/01/12/5a5851e72c7c2.jpg"
---

最近听说各位 DST 以及 DHSS 的小鲜肉们受困于 IT 课最后的网页 project，作为 UIC 唯一的计算机兴趣组织——计算机俱乐部，帮助各位同学解决这个难题是我们的责任。今天要为大家介绍一种全新的写网页的方式：Bootstrap 框架。他可以让网页开发变得十分方便，并且网页会相当美观。
让我们先来简单的看一下什么是 Bootstrap。
Bootstrap 是 Twitter 推出的一个用于前端开发的开源工具包。它由 Twitter 的设计师 Mark Otto 和 Jacob Thornton 合作开发,是一个 CSS/HTML 框架。
话不多说，下面开始我们的正式教程。

---

## 第一步：下载 Bootstrap

百度搜索 Bootstrap，我们会看到他的中文网站
点击进入，点击 Bootstrap3 中文文档（V3.3.5）
点击下载 Bootstrap，选择用于生产环境的 Bootstrap，然后点击下载
下载完成后我们会得到一个解压文件，把他解压出来，我们会得到一个文件夹。
然后我们打开这个文件夹会看到三个文件夹，然后我们再创建一个名为 img 的文件夹（用来存放网站的图片），然后用 Notepad++或者其他工具创建 HTML 文件保存在 dist 文件夹中。
然后我们在 Notepad++中复制如下的代码，然后粘贴进这个文件。

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <h1>你好，世界！</h1>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
```

中间的 body 部分就是我们需要编辑的部分了。至此，我们已经完成了第一步！

## 第二步：运用 Bootstrap 可视化布局网页

百度 Bootstrap 之后，我们发现在官方网站下面有一个 Bootstrap 可视化布局系统的网页，点击进入！
中间的空白部分就是你的网页了，我们可以用左边的工具进行网页的规划。
首先是布局设置
Bootstrap 提供了一套响应式、移动设备优先的流式栅格系统，随着屏幕或视口`（viewport）`尺寸的增加，系统会自动分为最多 12 列。说白了就是 Bootstrap 会把你的网页分成 12 列，你想怎么分都可以，只要让和等于 12 就行，如上图所示。
我们把 12 这一行拖入右边的空白区域，这样就生成了一个铺满全屏的一块区域，我们可以把他当做网页的导航栏。
接着我们规划网页的其他部分，这里我们采用**2 6 4**布局，将他拖入右边的白色部分。这部分就作为网页的正文部分。
我们的网页可能还需要一个页脚，所以我们再把一个 12 拖进右边，放在最下面。
至此，网页的布局设置就已经完成了！

## 第三步：往网页中添加各种组件

首先，我们先添加一个导航栏。点击交互组件，把导航栏拖动到第一行中。
然后我们可以在第二行的左边添加一个导航列表。点击组件，把导航列表拖进对应位置。
中间的部分我们可以放置网页的正文，我们可以先拖入一个标题栏，然后点击编辑设置文字，然后根据自己网页的需求放置相应的组件。
这里小编随意设置了几个组件放在里面。右边的部分我们也可以根据这个步骤添加自己喜欢的组件。
最后，我们要在第三行设置网页的页脚选择基本 CSS，把段落拖进第三行，对齐方式选择居中，然后编辑文字。最后我们得到的成品如下：
第三步就完成了！

## 第四步：下载代码并且修改

我们点击页面上方的下载，选择自适应宽度，然后复制里面的代码，粘贴到我们创建的 HTML 文件的`body`位置并且替换选中部分。
这个可视化布局系统生成的代码版本有点老，所以我们需要对一些地方做一些修改。
按 Ctrl+F 打开查找和替换工具，将所有的`class="span`替换为`class=”col-md-`然后点击全部替换（注意这里一定不要把全词匹配打钩），然后我们点击全部替换。
点击保存，然后我们用浏览器打开这个网页，我们发现网页跟原本的想象的不太一样，那是因为很多组件的代码版本很旧，我们需要修改。（此教程中我们需要修改导航栏和右边的部分）
再次打开 Bootstrap 官网，点击 Bootstrap3 中文文档（V3.3.5），页面上方有一个组件，点击他，然后在屏幕右边我们能看到很多项目，找到导航条，点击他
我们可以看到一个实例以及他的代码
将下面的代码复制到你的网页中，替换导航栏的部分。
从选中部分这里开始替换，一直替换到这里
然后保存，再次打开文件，我们发现，导航栏已经正常了。然后继续在 BootStrap 中找到你要替换的其余部分的代码，然后在相应位置替换即可。
就这样，一个简单的网页就做完了。各位同学还可以给网站添加背景图片，更改字体以及字体颜色以彰显你们网页的个性化。
