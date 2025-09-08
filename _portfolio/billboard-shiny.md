---
title: "Billboard Top 100 Shiny Dashboard"
layout: single
author_profile: true
permalink: /projects/billboard/
date: 2022-11-10
---
A Shiny dashboard simulating the Billboard Hot 100 music chart.

---

# 🎵 Billboard Top 100 Interactive Dashboard

**Team Members:** Shuoyuan Gao, Shiyuan Zhang  
**Technology Used:** R, Shiny, ggplot2, dplyr, jsonlite, shinythemes  
**Data Source:** Simulated Billboard Top 100 dataset (due to API access limitations)

### 🔗 Live Demo

👉 [Click here to launch the Shiny App](https://nl1z0n-shuoyuan-gao.shinyapps.io/shiny_app/)

---

### 💡 Project Overview

In this interactive dashboard, users can:

- Explore the **ranking and chart metrics** of the Billboard Top 100.
- Filter songs based on whether the artist has received an award.
- Visualize **Peak Position vs. Weeks on Chart** with interactive plots.
- Dive into **artist-specific analysis**, showing song performance summaries.
- View **album covers** with a slider and radio toggle interface.

This dashboard simulates the Billboard chart experience with interactivity and aesthetic design, offering users insights into chart performance in a visually engaging way.

---

### 📸 Screenshots

![](/images/billboard_about.jpg)
*About Page*

![](/images/billboard_plot.jpg)
*Songs’ Ranking Scatter Plot*

![](/images/billboard_plot2.jpg)
*Peak Position vs. Weeks Plot*

---

### 📁 Source Code

The full source code is available on [GitHub](https://github.com/GSYH/billboard-shiny-dashboard).  
The dataset used (`Fake_Billboard_Data.csv`) is included in the `shiny_app/www` folder for reproducibility.

---

### 📍 Technologies & Features

- `fluidPage` and `navbarPage` layout
- `ggplot2` plots with dynamic filtering
- Album artwork integration via reactive UI rendering
- CSS styling and theming via `shinythemes` and `tags$style`

---