---
title: "U.S. Election Clustering Analysis"
layout: single
permalink: /projects/us-election/
author_profile: true
date: 2022-05-12
---

This project employs unsupervised machine learning techniques to uncover and visualize patterns in county-level voting behavior from the 2016 U.S. presidential election.

---
# 🗳️ U.S. Election Clustering Analysis – Final Report

**Team Members**  
- **Shuoyuan Gao**: Parts 1–4, 8–9 (60%)  
- **Shiyuan Zhang**: Parts 5–7, 10 (40%)

---

## 📘 Abstract

In this project, we used clustering algorithms to analyze U.S. county-level voting data from the 2016 presidential election. Our main objective was to determine whether voter preferences cluster by state and to visualize the structure of such clusters. By applying K-means and Hierarchical Agglomerative Clustering (HAC), we explored whether unsupervised learning techniques can reveal hidden geographic or political patterns in voter support for different candidates.

---

## 📂 Dataset

The dataset was provided by the course instructor and contains voting information from all U.S. counties during the 2016 primary elections, including:
- Number and percentage of votes for each Democratic and Republican candidate
- County and state information

---

## 📈 Methodology

### 📊 Preprocessing

- Removed irrelevant variables (e.g., `Location_State_Abbreviation`)
- Scaled all variables using `MinMaxScaler` to prepare for clustering

### 🧪 Clustering Techniques

- **K-Means Clustering**
  - Number of clusters chosen using elbow method and silhouette scores
  - Evaluated performance using silhouette score and adjusted Rand index

- **Hierarchical Agglomerative Clustering (HAC)**
  - Used Ward linkage method
  - Compared with K-Means using t-SNE plots

---

## 📎 Sample Python Code

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

### 📎 Full Report

[📄 View Full Report (PDF)](/files/uselection_report.pdf)