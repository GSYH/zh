---
title: "Billboard最火100首歌曲Shiny应用"
layout: single
author_profile: true
permalink: /projects/billboard/
date: 2022-11-10
---
一个Shiny仪表板模拟了Billboard百强音乐榜单.

---

# 🎵 Billboard百强音乐可互动性仪表板

**组员：** 高硕远, 张世元  
**采用的技术：** R, Shiny, ggplot2, dplyr, jsonlite, shinythemes  
**数据来源：** 由于API链接已过期，数据采用模拟的方式进行

### 🔗 实时演示

👉 [点击此处启动Shiny应用程序](https://nl1z0n-shuoyuan-gao.shinyapps.io/shiny_app/)

---

### 💡 项目概述

在这个交互式仪表板中，用户可以：

- 探索音乐百强中的**排名与排行榜指标**
- 根据艺人是否获得过奖项来筛选歌曲。
- 通过交互式图表直观呈现**峰值位置**与**登榜周数**之间的关系。
- 从**艺人角度**切入，呈现其歌曲在排行榜上的综合表现。
- 通过滑动条和单选切换界面查看**专辑封面**。

这个仪表盘通过交互性与美学设计，模拟了 Billboard 榜单体验，为用户以视觉吸引的方式提供榜单表现的深度洞察。

---

### 📸 截屏展示

![](/images/billboard_about.jpg)
*主页面*

![](/images/billboard_plot.jpg)
*歌曲排行散点图*

![](/images/billboard_plot2.jpg)
*峰值位置 vs. 登榜周数*

---

### 📁 源代码

完整源代码可在此查看[GitHub](https://github.com/GSYH/billboard-shiny-dashboard).  
数据集(`Fake_Billboard_Data.csv`)也囊括在`shiny_app/www`文件夹中以供重复生成本仪表板。

---

### 📍 技术与功能亮点

- 使用 `fluidPage` 与 `navbarPage` 构建网站整体布局结构  
- 基于 `ggplot2` 的图表，支持动态筛选与交互更新  
- 通过 reactive UI 实现专辑封面图的实时加载与展示  
- 使用 `shinythemes` 与 `tags$style` 进行页面美化与 CSS 样式定制 

---
