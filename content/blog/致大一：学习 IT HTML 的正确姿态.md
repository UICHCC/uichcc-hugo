---
title: 致大一：学习 IT HTML 的正确姿态
date: 2016/11/25 00:00:00
---

想必有 IT 课的大一小鲜肉们最近一定有在忙 IT 的最后一项网页作业。IT 作为一门通识教育课程，初衷就是让所有同学对信息技术或者通俗来说，电脑知识有入门的了解，包括日常使用的一些软件基础和一直很流行的 web 开发基础。聊胜于无，我们具备这方面的知识或者技能是不会吃亏的。

昨天我们有一则推送告诉大家如何在不写或者少写代码的情况下完成一个网页 UI (User-Interface, 用户界面) 的搭建。不得不说，对于刚刚接触 HTML (HyperText Markup Language, 超文本标记语言) + CSS (Cascading Style Sheet, 层叠样式表) 开发的童鞋来说 (今天不提 JS 哦，JavaScript)，用生成器布局网页可以省下不少麻烦，比如大量的代码作业。

**但是**，生成器对于 IT 课作业可是一个错误的示范哦，因为我们完成这个作业不是要求做的有多么的精致多么的漂亮，更重要的是要自己亲自上手去完成一个网页项目。所以，我们给同学们的**建议**是，在不使用生成器的前提下，对于有经验或对网页颜值要求较高的同学可以尝试使用一些 UI 框架（什么是 UI 框架？顾名思义就是人家已经写好的 CSS 样式和效果你可以直接拿来用），比如 Bootstrap，Semantic UI 和 Amaze UI 等等，记住使用框架不是使用生成器哦；对于不想借用框架的同学，这个作业是一个极好的锻炼机会。

上干货，这里给出几点 tips 供同学们在完成作业的时候参考。

注意 `HTML` 中标签的闭合，大部分标签都有对应一个闭合标签，也有少部分标签不用闭合。常用的标签有：

```
<p></p> paragraph, 段落
<br> break, 空一行
<hr> horizontal rule, 水平分割线
<h1></h1> 到 <h6></h6> head, 标题
<img /> image, 图片
<ul></ul> unordered list, 无序列表
<ol></ol> ordered list, 有序列表
<li></li> list item, 列表项目
<center></center> 居中
<table></table> 表格标签，内部标签有
<tr></tr> table row, 表格的行
<th></th> table head, 表格的表头单元格
<td></td> table data cell, 表格的标准单元格
<a></a> anchor, 锚，可以创建指向一个地址的超链接
<div></div> division, 分区或节，块级元素，推荐使用此标签进行网页的布局
```

了解 CSS 的三种定义方式，优先权 a > b > c
内联样式
在 HTML 标签内部，比如 
`<p style="color: red;">`
内部样式表
在 `<head>` 内部，比如 
`<head><style type="text/css"> p {color: blue;} </style></head>`
外部样式表
外部文件，通过 `<link rel="stylesheet" type="text/css" href="mystyle.css" />` 链接，比如
在 `mystyle.css` 文件中可以有
`p {color: yellow;}`

按照优先级 a > b > c，上面例子中最终 <p> 标签的字体颜色会是 red 红色而不是蓝色也不是黄色。

点击发送邮件的链接代码是
`<a href="mailto:uichcc@qq.com">Click to mail me</a>`

当有多个 `<p>` 标签的时候，如何单独编辑其中一个或几个的 CSS 样式？
比如有如下 HTML 代码：
```
<p>1</p>
<p>2</p>
<p>3</p>
<p>3</p>
<p>3</p>
<p>4</p>
<p>5</p>
```

单独编辑一个
需要使用 id 属性去标记 `<p>` 标签，每个标签的 id 必须是不重复的，如下

```
<p id="one">1</p>
<p id="two">2</p>
<p id="three0">3</p>
<p id="three1">3</p>
<p id="three2">3</p>
<p id="four">4</p>
<p id="five">5</p>
```

然后在 CSS 代码中我们可以这样去定位每个 `<p>` 标签并进行编辑

```
p#one {color: #111;}
p#two {color: #111;}
p#three0 {color: #111;}
... 
```

这样，我们就可以实现单独编辑其中某一个标签的样式啦

同时编辑多个
需要使用 class 属性去标记 `<p>` 标签，每个标签的 class 可以重复，如下

```
<p class="one">1</p>
<p class="two">2</p>
<p class="three">3</p>
<p class="three">3</p>
<p class="three">3</p>
<p class="four">4</p>
<p class="five">5</p>
```

然后在 CSS 代码中我们可以这样去定位每类 `<p>` 标签并编辑

```
p.one {color: #111;}
p.two {color: #222;}
p.three {color: #333;}
...
```

这样，我们就可以高效率的同时编辑其中的内容为 3 的 <p> 标签啦

上面的例子同样适用于其他标签，比如更常用的 `<div>` 标签。id 和 class 属性可以同时标记一个标签，但是二者的值最好不要相同，也就是说最好不要出现 `<p id="one" class="one">1</p>` 这种情况。

使用 `<div>` 标签进行网站的布局，通过 id 和 class 对每个 `<div>` 设置其位置和不同的样式。

如果在写小组作业的时候能够将以上5点全部应用，包括第1点里面的所有标签，并配上自己精心布置的 CSS 样式，相信你们的作业一定会得到一个不错的分数！有任何问题的话可以直接留言到本公众号，我们看到后会耐心的帮你们解答哦。

原文作者： **Destiny**