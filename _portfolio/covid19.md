---
title: "美国新冠疫情的病例与超额死亡率分析"
layout: single
author_profile: true
permalink: /projects/covid19/
date: 2025-04-28
---

本项目按疫情波次分析新冠肺炎病例率与超额死亡率

---
## 📊 美国COVID-19疫情波次分析

**小组成员：** 
-高硕远
-主乙乔 
**所属课程：** 
生物统计620 —健康数据科学导论 
**所属院校** 
-密歇根大学安娜堡分校公共卫生学院
**GitHub 储存库：** 
-[新冠疫情分析](https://github.com/GSYH/Analysis-of-the-COVID-19)

---

## 🔍 项目概述

此项目分析了自2020年1月到2025年4月间，美国在三次主要新冠疫情浪潮中确诊病例与超额死亡率的变化趋势。通过州级的每周数据（包括确诊病例数、实际死亡数与预期死亡数），我们构建了统计模型来量化疫情的影响，并进行未来趋势的预测。

我们探讨了：

- **疫情波动识别**通过病例数、死亡率和超额死亡率的时间序列图，识别三次主要疫情波动。

- **各州严重程度差异**分析每一波疫情中，各州疫情严重程度的变异情况。

- **毒力建模**通过病例致死率（CFR）对病毒毒力进行建模。

- **跨波预测能力**使用线性回归、LOESS 局部回归和样条模型对疫情波进行跨期预测。

---

## 📈 关键发现

- **第一波（2020年3月–6月）**：病例致死率（CFR）最高，达 **4.5%**，美国东北部受灾最严重。
- **第二波（2020年10月–2021年2月）**：死亡人数最多的一波，影响范围广泛。
- **第三波（2021年7月–10月）**：因医疗手段改进与疫苗接种，CFR 明显下降，但部分地区死亡率依然偏高。

> **模型洞察：** 在预测超额死亡率方面，**非线性模型**（如样条回归、LOESS）优于线性模型，尤其是在**使用某一波疫情数据训练并在另一波上测试**时表现更佳。


---

## 📄 报告获取方式

📘 **[点击下载最终报告 (PDF)](/files/BIOS_620_Final_Project_Report.pdf)**
🗂️ **[GitHub 储存库](https://github.com/GSYH/Analysis-of-the-COVID-19)**  
📍 **完整报告中包含各波疫情的指标分析、死亡率地图、病例致死率（CFR）图表，以及模型比较图。**


---

## 🧪 工具与方法

- **编程语言与使用库：** R，`ggplot2`，`dplyr`，`splines`，`loess`
- **数据来源：**  
  - [美国疾病控制与预防中心（CDC）：新冠疫情死亡数](https://data.cdc.gov/National-Center-for-Health-Statistics/Provisional-COVID-19-Death-Counts-by-Week-Ending-D/r8kw-7aab)  
  - [美国疾病控制与预防中心（CDC）： 新冠疫情病例数据集](https://data.cdc.gov/Case-Surveillance/Weekly-United-States-COVID-19-Cases-and-Deaths-by-/pwn4-m3yp)  
  - [美国人口普查局：州级人口估算数据](https://www.census.gov/newsroom/press-kits/2024/national-state-population-estimates.html)

---

## 🧠 致谢

本项目为密歇根大学 BIOS 620 课程的课程项目。我们由衷感谢 Dylan Cable 教授与助教（GSI）Yize Hao 在整个项目过程中给予的指导与支持。

---
