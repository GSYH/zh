---
title: "COVID-19 Case and Excess Mortality Analysis"
layout: single
author_profile: true
permalink: /projects/covid19/
date: 2025-04-28
---

Analysis of the COVID-19 Case Rate and Excess Mortality Rate by Pandemic Wave

---
## 📊 COVID-19 Pandemic Wave Analysis in the U.S.

**Team Members:** Shuoyuan Gao, Yiqiao Zhu  
**Course:** BIOS 620 — Introduction to Health Data Science  
**Institution:** University of Michigan School of Public Health  
**GitHub Repository:** [Analysis-of-the-COVID-19](https://github.com/GSYH/Analysis-of-the-COVID-19)

---

## 🔍 Project Overview

This project analyzes the evolution of COVID-19 case and excess mortality rates across three major pandemic waves in the United States from January 2020 to April 2025. Using state-level weekly data on confirmed cases, total deaths, and expected deaths, we built models to quantify and forecast the impact of the pandemic.

We investigated:

- **Wave identification** using time series plots of case, death, and excess mortality rates.
- **State-level variation** in severity during each wave.
- **Modeling virulence** using case fatality rates (CFR).
- **Cross-wave prediction** using linear, LOESS, and spline models.

---

## 📈 Key Findings

- **Wave 1** (Mar–Jun 2020): Highest CFR (4.5%) and Northeast hardest hit.
- **Wave 2** (Oct 2020–Feb 2021): Deadliest wave with widespread impact.
- **Wave 3** (Jul–Oct 2021): Lower CFR due to improved healthcare and vaccination, but regional mortality remained high.

> **Model Insight:** Nonlinear models (e.g., splines, LOESS) outperformed linear models in predicting excess mortality, especially when trained on one wave and tested on another.

---

## 📄 Report Access

📘 **[Final Report (PDF)](/files/BIOS_620_Final_Project_Report.pdf)**
🗂️ **[GitHub Repository](https://github.com/GSYH/Analysis-of-the-COVID-19)**  
📍 **Wave-specific metrics, mortality maps, CFR charts, and model comparison plots included in the full report.**

---

## 🧪 Tools & Methods

- **Languages & Libraries:** R, `ggplot2`, `dplyr`, `splines`, `loess`
- **Data Sources:**  
  - [CDC COVID-19 Death Counts](https://data.cdc.gov/National-Center-for-Health-Statistics/Provisional-COVID-19-Death-Counts-by-Week-Ending-D/r8kw-7aab)  
  - [CDC Case Surveillance Dataset](https://data.cdc.gov/Case-Surveillance/Weekly-United-States-COVID-19-Cases-and-Deaths-by-/pwn4-m3yp)  
  - [U.S. Census State Population Estimates](https://www.census.gov/newsroom/press-kits/2024/national-state-population-estimates.html)

---

## 🧠 Acknowledgements

This project was completed for BIOS 620 at the University of Michigan. We thank Professor Dylan Cable and our GSI Yize Hao for their support and guidance.

---