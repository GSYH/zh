---
title: "Student Performance Analysis Using SAS"
permalink: /projects/student-performance/
author_profile: true
collection: portfolio
date: 2024-05-15
---

This project investigates how different demographic and educational factors affect student performance.

---

## Project Overview

This project investigates factors influencing student academic performance using data from two Portuguese schools. The primary outcome variable is the final grade (G3) in a Portuguese language course. We employed descriptive analysis, multiple linear regression, Poisson log-linear modeling, and cluster analysis to identify significant predictors of student success.

## Team
- Shuoyuan Gao: Descriptive analysis of categorical variables, Cluster analysis  
- Yufei Duan: Numeric variable analysis, Linear modeling, Variable selection  
- Zhongwen Shen: Multiple regression modeling, Model evaluation

## Methodology

- **Data cleaning**: Removed students with a final grade (G3) of 0.
- **Exploratory analysis**: Examined both numeric (e.g., age, study time, parental education) and categorical variables (e.g., gender, family support).
- **Modeling**:
  - Multiple linear regression to predict G3.
  - Over-dispersed Poisson log-linear model.
  - Hierarchical cluster analysis based on selected predictors.

## Key Findings

- **Significant predictors of G3**:
  - **Failures**: Each additional failure decreased G3 by ~1.72 points.
  - **Study time**: Positively associated with G3.
  - **Mother’s education**: Higher education linked with better student outcomes.
  - **Workday alcohol consumption (Dalc)**: Negatively associated with G3.

- **Best model**: The **linear regression model** had the best balance of fit and complexity (Adjusted R² = 0.3461).

- **Clustering** revealed distinct student profiles based on performance-related features.



## Code Part

This study identifies critical academic and socio-demographic factors affecting student performance. The analysis offers valuable insights for educators and policymakers aiming to support diverse student needs.
## 🔍 Methods

The analysis was performed using SAS. Below is a snippet of the SAS code used in the analysis:

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

### 📎 Full Report

[📄 View Full Report (PDF)](/files/student_performance_report.pdf)

## Reference

Cortez, Paulo. (2014). *Student Performance*. UCI Machine Learning Repository. [https://doi.org/10.24432/C5TG7T](https://doi.org/10.24432/C5TG7T)
