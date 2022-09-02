---
title: Timetable to Background
enableFA: false
desc: 将 MIS 获得的时间表转换成手机壁纸或导出成 .ics 日历文件
icon_path: images/timetable.png
date: 2022-09-02T14:30:00+08:00
author: UICHCC UICHCC Computer Club
featurePhoto: false
project_url: https://uichcc.com/timetable-to-bg/
github_url: https://github.com/UICHCC/timetable-to-bg/
---

使用方法：
1. 从 MIS 复制你的时间表。需要完整包括所有时间段和表头。
2. 粘贴到页面顶部的文本框中，如果第一步的操作正确，粘贴到文本框的内容也应该显示为一个表格。
3. 点击 `Step 1: Parse` 按钮，进行课程信息的解析和抽取。如果正常，会在按钮下方输出课程的列表。
4. 选择你需要输出图像的规格，包括屏幕比例，分辨率，以及背景图片。
5. 选择完毕，请点击 `Step 2: Generate`。等待生成完毕，会弹出模态框并显示生成的图片。
6. 可以长按生成的图片并保存到本地。

日历生成：
1. 按照上面使用方法的1-3，解析课程表中的课程信息。
2. 滚动到页面底部的 Bonus Tool: .ics file Generator 区域，输入重复事件的区间（一般为授课的时间范围），格式为`四位数年份-两位数月份-两位数日期`，如 `2022-09-05`。
3. 确认日期无误后，点击 `Get .ics` 按钮。文件会被下载到本地。从日历软件内导入即可。

