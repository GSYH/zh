---
title: "使用扩散模型与CLIP进行肺炎病患状态分类"
excerpt: "结合Stable Diffusion与CLIP模型，处理儿科胸部X光图像分类问题。通过生成合成图像缓解类别不平衡，提升模型准确率。"
collection: portfolio
layout: single
author_profile: false
permalink: /portfolio/pneumonia/
date: 2024-11-17
---

!胸部X光片示例](/images/samplexray.jpg)

## 项目概述

肺炎仍然是导致儿童死亡的主要原因之一。本项目探讨了将**扩散模型（diffusion models）**和**对比语言-图像预训练（CLIP）**技术应用于儿科胸部X光图像分类的可能性，分类类别包括：**正常**、**病毒性肺炎**和**细菌性肺炎**。

我们使用了来自**广州妇女儿童医疗中心**的5856张图像数据集。为了解决类别不平衡问题，我们使用**LoRA**方法对**Stable Diffusion**模型进行了微调，为少数类别生成了2000张合成图像。随后，我们对**CLIP ViT-L/14**模型进行了微调，利用基于提示词的文本标签对合并后的数据集进行分类。

## 关键方法

- **Stable Diffusion v2 + LoRA** 用于图像合成  
- **CLIP 微调**实现对比学习  
- **提示工程（Prompt Engineering）**：使用 “An image of [Type] chest X-ray.” 作为输入模板  
- **低GPU预算**：仅训练约 1% 的参数  

## 结果

- **训练准确率** 从 **48.94% 提升至 50.51%**
- **测试准确率**：**37.5%**，**召回率（Recall）**：50%
- 各个训练轮次的可视化指标摘要如下：

![训练表现图](/images/performance_plot.jpg)

## 工具与运行环境

- Python 3.9，PyTorch 2.5.1  
- NVIDIA RTX 3090（24GB 显存）  
- LoRA，OpenCLIP

## 成员贡献

- **Xiaomeng Xu**：代码编辑；摘要；引言部分  
- **Wenfei Mao**：代码编辑；扩散模型；CLIP；结论  
- **Yingzhen Wang**：代码编辑；结果撰写；扩散模型部分  
- **高硕远**：代码编辑；实验设置；结论撰写
  
📂 完整项目库：[在GitHub上查看](https://github.com/xxm12345666/biostat625-group2-project)

## 未来研究方向

- 尝试更快的扩散模型（如 Consistency Models、One-Step Diffusion）  
- 探索基于强化学习的微调方法（如 DPO、PPO）  
- 从 LoRA 微调升级到完整模型微调，以提升生成图像的质量  

## 项目总结

本研究提出了一种混合策略：使用**生成式模型**进行类别平衡，结合**多模态大模型（CLIP）**进行医学图像分类。尽管目前模型准确率仍有限，但该方法在医学 AI 中展示了新的潜力路径。
