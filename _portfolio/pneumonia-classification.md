---
title: "Pneumonia Patient Condition Classification Using Diffusion Models and CLIP"
excerpt: "Used Stable Diffusion and CLIP for pediatric chest X-ray classification. Generated synthetic images to address class imbalance and improved model accuracy."
collection: portfolio
layout: single
author_profile: false
permalink: /portfolio/pneumonia/
date: 2024-11-17
---

![Chest X-ray Sample](/images/samplexray.jpg)

## Project Overview

Pneumonia remains a leading cause of childhood mortality. This project explores the application of diffusion models and contrastive language–image pre-training (CLIP) for pediatric chest X-ray classification into **normal**, **viral pneumonia**, and **bacterial pneumonia** categories.

We used a dataset of 5,856 images from Guangzhou Women and Children’s Medical Center. To address class imbalance, we fine-tuned a **Stable Diffusion** model using **LoRA**, generating 2,000 synthetic images for minority classes. We then fine-tuned a **CLIP ViT-L/14** model to classify the combined dataset using prompt-based text labels.

## Key Methods

- **Stable Diffusion v2 + LoRA** for image synthesis.
- **CLIP fine-tuning** for contrastive learning.
- **Prompt engineering**: “An image of [Type] chest X-ray.”
- **Low GPU budget**: only ~1% of parameters trained.

## Results

- **Training accuracy** increased from **48.94% to 50.51%**
- **Test accuracy**: **37.5%**, **Recall**: 50%
- Visual summary of metrics across epochs:

![Training Performance Plot](/images/performance_plot.jpg)

## Tools & Environment

- Python 3.9, PyTorch 2.5.1
- NVIDIA RTX 3090 (24GB)
- LoRA, HuggingFace 🤗, OpenCLIP

## Contributions

- Xiaomeng Xu: Code editing; abstract; introduction
- Wenfei Mao: Code editing; Diffusion Model; CLIP; Conclusion
- Yingzhen Wang: Code editing; Results; Diffusion model
- Shuoyuan Gao: Code editing; Experiment Setup; Conclusion
- Full GitHub Repo: [View on GitHub](https://github.com/xxm12345666/biostat625-group2-project)

## Future Work

- Try **faster diffusion models** (e.g., Consistency Models, One-Step Diffusion)
- Explore **RL-based fine-tuning** (e.g., DPO, PPO)
- Move from LoRA to full model fine-tuning for higher fidelity.

## Summary

This study demonstrates a hybrid approach using **generative models** for class balancing and **multimodal LLMs** for medical image classification — showing promise despite current accuracy limitations.
