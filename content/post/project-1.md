---
date: 2020-08-16T10:58:08-04:00
description: "From 400 samples sound in 10 classes"
featured_image: "/images/proyect1/CRNN.png"
tags: ["LSTM","Sound Classification", "STFT","TensorFlow","ScikitLearn"]
title: "Project 1: Sound Classification ESC10"
---

## Background
In this new era of automatization, we can make some process automatically, like recognize sound and get work on it, to deploy predictive maintenance or trigger alarms in machines.
Like a rotatory machine, like rotors or bearings, o the bigger ones like hydro electric generators.
So, this work is about that, classify sound into 10 different classes. I have implemented differents model and a benchmark of models to compare several algorithms to get which one is the best.

## Models
* SVC
* SVC+PCA-300
* SVC+NCA-300
* XGB+NCA-300
* KNC-NCA-300
* CRNN = CNN+LSTM-BI+LSM+MLP

## EDA
The sound lenght in the dataset doesn't equal, so i decide to made all equal, cut or padding with ceros, the lenght, to 4 secons in 44Khz sample rate, that beacuse the media was around 4 seconds lenght.

{{< figure src="/images/proyect1/sound_sample.png" title="" >}}

Another pre-procesing analisys was, how take the initial caracteristics of the sound, i meand the spectrum of sound in each example. Analising the sound samples i have seen that we can work with STFT without problems, because our samples was into a relative short frecuency range [0-16Khz], this was no problem, keep frecuency resolution and time resolution.
* n_fft = 1024
* win_length=1024 
* hop_length=int(win_length/2)
{{< figure src="/images/proyect1/STFT.png" title="" >}}

## Pipeline
* Input Simple <p>

Each sound was sampled with 44Khz and cut or padding to 4seconds length then take the short Fourier transform, then calculate the absolute to the complex number and finally the power in dB scale.
After all that, normalize [0-1] each spectrum image, and reshape every sample spectrum into a n-array.

* Input PCA or NCA

After the input simple, we could use PCA or NCA to reduce the complex dimensionality to make the classification more efficient. For SVC and CRNN the reduction dimensionality was not used.

* Model

We had implemented four different classification algorithms, every of then was combined with PCA or NCA for reducing complexity in the model.
Finally, the deep learning model, show amazing results with some few epochs (60), reaching the best accuracy in all the benchmark.

* Training

The dataset was split and stratify each classes into 0.8 and 0.2 proportion, for the training and test data.

## Classification
The results and coding are very detayled in the github repo, i will summarice them here.

Model | val accuracy
---|---
 SVC | 0.625
 SVC+PCA-300| 0.6125
SVC+NCA-300| 0.625
XGB+NCA-300| 0.637
KNC-NCA-300| 0.45
KNC-PCA-300| 0.45
 CRNN = CNN+LSTM-BI+LSM+MLP| 0.825
 {{< figure src="/images/proyect1/CRNN.png" title="" >}}
  {{< figure src=/images/proyect1/training_loss_RCNN.png title="" >}}

## Conclusions
* We can reduce dimensionality to our data, but not always is the best choice
* We implement a deep learning model thinking like how the human brain process the sound, a time series, that because the LSTM-BI and LSTM was implemented
* Data augmentation was implemented, but the result was not good enough. You can find the sound generator  in the github repo.

[GitHub - Project 1: Sound Classification ESC10](https://github.com/DavidCastilloAlvarado/STFT_ESC10/tree/fe64f06a07df5531598c5a290c588b4fbc191d45)

[GitHub - Project 1: Sound Classification ESC10 - full benchmark](https://github.com/DavidCastilloAlvarado/STFT_ESC10/blob/fe64f06a07df5531598c5a290c588b4fbc191d45/STFTstudy.ipynb)

