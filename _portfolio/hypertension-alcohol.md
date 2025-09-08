---
title: "Investigating the Association of Hypertension and Alcohol Intake"
excerpt: "Explored multivariable linear regression modeling using NHANES data to examine the link between alcohol consumption and systolic blood pressure."
collection: portfolio
date: 2024-11-15
---

This project investigates the relationship between systolic blood pressure and alcohol consumption using data from the **National Health and Nutrition Examination Survey (NHANES)** (2009–2012). The study incorporates **log-transformed outcomes, multivariable linear regression, and interaction terms** to model the relationship.

---

### 🧠 Project Summary

- **Team Members**: Sara Elfring, Jingyi Chen, Shuoyuan Gao, Alexandra Schmalzel, Haowen Wu  
- **Dataset**: NHANES (2009–2012)  
- **Key Methods**: Linear regression, log transformation, interaction terms, model diagnostics  
- **Main Finding**: Higher alcohol consumption is significantly associated with elevated systolic blood pressure, especially among younger adults.

---

### 📊 Final Model Output

<img src="/images/hypertension-final.jpg" alt="Final Model Output and Residual Histogram" style="width:100%;"/>

> **Adjusted R²**: 0.185  
> **Notable Results**:
> - 12+ drinks per year → +0.060 log-units in SBP (p = 0.001)
> - Each drink per day → +0.003 log-units (p < 0.001)
> - Negative interaction with age

---

### 🔁 Baseline Model Comparison

<img src="/images/hypertension-baseline.jpg" alt="Baseline Model and Residuals" style="width:100%;"/>

> **Adjusted R²**: 0.1857  
> - No log transformation used  
> - 12+ drinks per year was not statistically significant (p = 0.864)

---

### 📎 Full Report

👉 [Download Full Report (PDF)](/files/hypertension-report.pdf)

---

### 💬 Notes

This work shows how transformations, proper variable selection, and modeling interactions can improve interpretability and model validity in public health research. Future directions include additional residual diagnostics and applying alternative models (e.g., GAMs or machine learning-based regression).
