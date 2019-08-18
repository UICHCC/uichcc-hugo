---
title: UIC专属头像合成器 · 原理解析
date: 2016/12/07 00:00:01
---

这是一个网页，涉及到的语言是 HTML, CSS 和 JavaScript (JS)，使用到的 JS 框架是 jQuery。用到的主要 HTML 元素是 Canvas (画布)，主要的 JS 类是 FileReader。下面主要讲一下 JS 里面的功能代码。

原理是使用画布进行“ps”，获取上传的图片之后，给画布填充白色背景颜色，然后将图片按照指定比例缩小并画在画布上面，此时的图片内容缩小后的头像，最后将 logo 图片画在右上角，即可完成 UIC logo 专属头像的合成。

首先，新建一个画布。

```
var c = document.cresateElement('canvas');
var ctx = c.getContext('2d');
c.width = wid;
c.height = wid; 
ctx.fillStyle = 'white'; // 将画布的填充颜色设置为白色，之后填充背景颜色时会用到
```

wid 是画布的默认宽度，也就是图片的宽度。然后我们将
![](https://ooo.0o0.ooo/2017/06/17/5944fbb4bfe22.jpg)
（由于图片格式是 png，故底色呈现为黑色。）

这个图片的地址存下来，以遍之后使用。这里我们把他存在数组 `data1[]` 中，我们可以通过 `data1[0]` 来获取这个图片的地址，数据格式是 `string`。

另外，我们需要`<input type="file" accept="image/*" id="uic">`标签实现本地文件上传功能。对应的 JS 代码：

```
$("#uic").change(function() {
 // 点击上传图片被调用，也就是点击上传图片之后这里面的代码会被运行
 ctx.fill(); // 填充背景颜色，颜色是白色
 var furl = $("#uic")[0].files[0]; // 获取上传的图片的 URL
 var file = new FileReader(); 
  file.readAsDataURL(furl); // 开始读取图片文件对象的内容
 file.onload = function(e){ // 上传的图片加载成功后被调用
   var img = new Image(); 
   img.src = e.target.result; // 将上传的图片的地址赋值给 img 对象
    img.onload = function () {
      ctx.drawImage(this, 78, 120, wid - 200, wid - 190); 
      // 将自己上传的图片缩小并画到画布上，也就是小头像，
      //78是小头像的左边距，120是上边距，(wid - 200)是小图片的宽度，
      //(wid - 190)是小图片的高度，单位是 pixel 即像素。
      var img = new Image();
      img.src = data1[0]; // 将 UIC logo 图片的地址并赋值
      ctx.drawImage(img, 0, 0, wid, wid); // 将 UIC logo 画到画布上
     $('#imgBox').attr('src', c.toDataURL("image/jpeg")); 
     // imgBox 是<img>图片标签的 id，
     //我们将画布的内容转换成 jpeg 
     格式的图片并将其显示到 id 为 imgBox 的<img>标签中。
    }
};
```

问：你的源代码我可以看到吗？
可以。 

![](https://ooo.0o0.ooo/2017/06/17/5944fbb4bea9c.jpg)

如图，点击“复制链接”，然后将链接发送到微信的电脑端，使用迅雷或其他下载工具新建任务，地址就是这个复制好的链接。下载到后是一个 HTML 文件，可以选择用记事本等工具打开。如果没有下载工具，将地址输入到浏览器。进入到网页后，

点击“检查元素”，即可查看到源代码。