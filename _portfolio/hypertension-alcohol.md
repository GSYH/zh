---
title: "探究高血压与酒精摄入的关联"
excerpt: "使用 NHANES 数据，通过多元线性回归模型分析酒精摄入量与收缩压之间的关系。"
collection: portfolio
date: 2024-11-15
---

本项目使用 **国家健康与营养调查（NHANES）** 数据（2009–2012 年）研究酒精摄入与收缩压之间的关系。  
分析方法包括 **对因变量取对数、多变量线性回归建模，以及交互项的加入**，以建立更准确的预测模型。

---

### 🧠 项目概览

- **项目成员**：Sara Elfring、Jingyi Chen、高硕远、Alexandra Schmalzel、Haowen Wu  
- **数据集**：NHANES（2009–2012）  
- **关键方法**：线性回归、对数转换、交互项建模、模型诊断  
- **主要发现**：酒精摄入量越高，收缩压显著升高，尤其在年轻人群中更为明显。

---

### 📊 最终模型结果

<img src="/images/hypertension-final.jpg" alt="Final Model Output and Residual Histogram" style="width:100%;"/>

> **调整后的 R²**：0.185  
> **显著结果包括**：
> - 每年饮酒 12 杯以上 → 收缩压对数值增加 0.060（p = 0.001）  
> - 每日饮酒 1 杯 → 收缩压对数值增加 0.003（p < 0.001）  
> - 与年龄呈负向交互作用（即年龄越大，酒精的影响越小）

---

### 🔁 基线模型比较

<img src="/images/hypertension-baseline.jpg" alt="Baseline Model and Residuals" style="width:100%;"/>

> **调整后的 R²**：0.1857  
> - 未进行对数转换（log transformation）  
> - 每年饮酒超过 12 杯在统计上不显著（p = 0.864）

---

### 📎 完整项目报告

👉 [点击获取完成项目报告 (PDF)](/files/hypertension-report.pdf)

---

### 💬 说明

本研究展示了在公共卫生研究中，如何通过变量转换、恰当的变量选择及交互项建模来提高模型的可解释性与有效性。未来的研究方向包括进一步的残差诊断，以及探索其他建模方法（例如广义加性模型 GAMs 或基于机器学习的回归方法）。
