---
title: "使用 SAS 进行学生成绩分析"
permalink: /projects/student-performance/
author_profile: true
collection: portfolio
date: 2024-05-15
---

本项目旨在研究不同的人口统计与教育因素如何影响学生的学业表现。

---

## 项目概述

本研究使用来自葡萄牙两所学校的数据，探讨影响学生在葡萄牙语课程中最终成绩（G3）的因素。我们采用描述性分析、多元线性回归、泊松对数线性建模和聚类分析，以识别学生学业成功的重要预测变量。

## 团队成员
- **高硕远**: 分类变量的描述性分析，聚类分析
- Yufei Duan: 数值变量分析，线性建模，变量选择  
- Zhongwen Shen: 多元回归建模，模型评估

## 方法概览

- **数据清洗**：移除最终成绩（G3）为 0 的学生数据  
- **探索性分析**：检查数值变量（如年龄、学习时间、父母教育水平）和分类变量（如性别、家庭支持）  
- **建模过程**：
  - 多元线性回归预测 G3  
  - 考虑过度离散的泊松对数线性模型  
  - 基于选定变量的层次聚类分析  

## 主要发现

- **G3 的显著预测因子**：
  - **历史挂科次数（failures）**：每增加一次挂科，G3 下降约 1.72 分  
  - **学习时间（study time）**：与 G3 正相关  
  - **母亲受教育程度**：教育水平越高，学生成绩越好  
  - **工作日饮酒量（Dalc）**：与 G3 负相关

- **最佳模型**：**线性回归模型**在拟合度与模型复杂度之间取得了最佳平衡（调整后 R² = 0.3461）

- **聚类分析**：揭示了基于绩效特征的不同学生群体画像

## 代码部分

本项目识别了影响学生成绩的重要学术和社会人口学因素，为教育工作者和政策制定者提供了宝贵的参考。

## 🔍 分析方法

本分析采用 SAS 完成。以下是部分使用的 SAS 代码示例：

```sas
proc import datafile="/path/student-marks.csv" out=student dbms=csv replace;
   getnames=yes;
run;

data student_clean;
   set student;
   if gender = "female" then gender_num = 1;
   else gender_num = 0;
run;

proc logistic data=student_clean;
   model passed(event='1') = gender_num reading_score writing_score / clodds=wald;
run;
```

### 📎 完整报告

[📄 点击阅读完整报告 (PDF)](/files/student_performance_report.pdf)

## 参考文献

Cortez, Paulo. (2014). *Student Performance*. UCI Machine Learning Repository. [https://doi.org/10.24432/C5TG7T](https://doi.org/10.24432/C5TG7T)
