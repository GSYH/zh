---
title: "2016年美国总统大选聚类分析"
layout: single
permalink: /projects/us-election/
author_profile: true
date: 2022-05-12
---

本项目使用无监督机器学习技术分析 2016 年美国总统大选中县级的投票行为数据，挖掘并可视化其中的潜在模式。

---
# 🗳️ 2016年美国总统大选聚类分析

**项目成员** 
- **高硕远**: 第1–4, 8–9部分(60%)  
- **Shiyuan Zhang**: 第5–7, 10部分(40%)

---

## 📘 摘要

本项目使用聚类算法对 2016 年总统大选期间的美国县级投票数据进行分析。我们的主要目标是判断选民偏好是否会按州进行聚类，并可视化这些聚类结构。我们采用了 K-Means 聚类和层次凝聚聚类（HAC）两种方法，探索无监督学习技术是否可以揭示不同候选人支持率中隐藏的地理或政治模式。

---

## 📂 数据集

本数据集由课程讲师提供，涵盖了 2016 年初选期间美国所有县的投票信息，包括：
- 各民主党和共和党候选人的得票数与得票百分比  
- 县和州的信息 

---

## 📈 方法概述

### 📊 预处理步骤

- 删除无关变量（例如 `Location_State_Abbreviation`）  
- 使用 `MinMaxScaler` 对所有变量进行缩放，为聚类做准备  

### 🧪 聚类技术

- **K-Means 聚类**
  - 使用肘部法（elbow method）和轮廓系数（silhouette score）确定聚类数  
  - 使用轮廓系数和调整后的 Rand 指数（Adjusted Rand Index）进行性能评估  

- **层次凝聚聚类（HAC）**
  - 使用 Ward 链接法（Ward linkage）  
  - 结合 t-SNE 图将结果与 K-Means 聚类进行可视化比较  
---

## 📎 Python 代码示例

```python
from sklearn.cluster import KMeans, AgglomerativeClustering
from sklearn.manifold import TSNE
from sklearn.metrics import silhouette_score
import seaborn as sns
import pandas as pd
import matplotlib.pyplot as plt

# Read and clean dataset
df = pd.read_csv("election.csv")
X = df.drop(["Location_State_Abbreviation"], axis=1)

# KMeans clustering
kmeans = KMeans(n_clusters=13, random_state=100).fit(X)
labels = kmeans.labels_

# t-SNE for visualization
tsne = TSNE(n_components=2, perplexity=40, random_state=100)
X_proj = tsne.fit_transform(X)

df_plot = pd.DataFrame(X_proj, columns=["x", "y"])
df_plot["label"] = labels

sns.scatterplot(x="x", y="y", hue="label", data=df_plot, palette="tab20")
plt.title("t-SNE with K-Means Clusters")
plt.show()
```

### 📎 完整报告

[📄 点击阅读完整版 (PDF)](/files/uselection_report.pdf)
