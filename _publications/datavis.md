---
title: "数据可视化"
collection: publications
permalink: /datavis/
author_profile: true
layout: single
---

## 📊 数据可视化项目

本页面展示了往期项目单元中的可视化叙事作品，使用了 R、Python、SAS 和 Tableau 等工具完成。

---

# 🦠 新冠疫情的趋势分析 (R)
使用公共数据集对全球及各大洲 COVID-19 病例和死亡数据进行可视化分析。
工具：R（ggplot2、dplyr）、Tableau 和 Python。

## 疫情在美国各大区域的传播趋势及分波段分析

![时间推移的全球病例](/files/p1.png)

## 各波次的病死率（CFR）变化趋势  
![Continent Trends Cases](/files/p4.png)  

---
## 各波次中超额死亡率与确诊率的关系  
![Continent Trends Deaths](/files/p5.png)  
![Summary Heatmap](/files/p6.png)  

---
## 各州在不同波次的死亡率热力图分类展示  
![Heatmaps displaying wave-specific death rate classifications across states](/files/p2.jpg)  

---
## 各波次中死亡率最高与最低的三个州柱状图展示  
![Bar plots highlighting the top and bottom 3 states by death rate in each wave](/files/p3.jpg)

---

# 🎵 Billboard Music Trends (Shiny App)

一个交互式仪表板，分析 Billboard Top 100 数据，包含歌曲排名、艺术家表现以及专辑封面等内容。

🌐 [点击启动应用](https://nl1z0n-shuoyuan-gao.shinyapps.io/shiny_app/)

![Billboard 截图](/files/shinyapp.jpg)


---

### 📈 葡萄牙学生成绩分析 (SAS)

**总结：** 通过聚类分析和回归线揭示学生成绩、出勤率和人口统计特征之间的模式关系。

![Student Plot](/files/student.jpg)

---

# 🇺🇸 2016美国总统大选聚类分析 (Python)

## 轮廓分数图（Silhouette Plot）(12个聚类)
![Silhouette Plot](/files/sc.jpg)

## 最优聚类数：基于轮廓系数
![Silhouette Score Line](/files/elbow.jpg)

## t-SNE 聚类可视化
![t-SNE Cluster Plot](/files/cl.jpg)

## 肘部法则 (Elbow Method)
![Elbow Synthetic](/files/elbow1.jpg)

## 候选人得票率相关性热图
![Correlation Heatmap](/files/heat.jpg)

## 候选人得票率散点图
![Candidate Scatter](/files/1.jpg)

---

# 🧬 肾癌表达可视化分析

本项目通过火山图、通路富集分析、蛋白质相互作用网络和密度分布图等方法，比较**正常**肾组织与**肿瘤**肾组织的基因表达差异，从而识别重要的生物学差异。


## 🌋 差异表达火山图

![Volcano Plot](/files/6.jpg)

---

## 📊 表达密度分布图

![Expression Density](/files/5.jpg)

---

## 🎯 KEGG 通路富集分析图

![Pathway Dot Plot](/files/4.jpg)

---

## 🔗 蛋白质相互作用网络图

![Gene Network](/files/2.jpg)

---

## 📈 富集分数 (NES) 与显著性关系图

![NES vs Significance](/files/3.jpg)

---

### 使用工具与技术

- **R 语言**：使用了 `ggplot2`、`shiny`、`dplyr`、`tidyr`、`DT`、`httr` 和 `jsonlite` 等包进行数据清洗、可视化与交互式开发  
- **Python**：应用了 `matplotlib`、`seaborn`、`scikit-learn`、`pandas`、`numpy` 进行可视化与建模  
- **SAS**：用于聚类分析及教育类数据建模  
- **Tableau**：用于构建交互式仪表盘和数据可视化故事展示   
