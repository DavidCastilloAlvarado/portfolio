---
date: 2020-08-26T08:58:08-05:00
description: "Most popular Open Kaggle's contend"
featured_image: "/images/project2/titanic.jpg"
tags: ["Kaggle","Machine learning", "EDA","ScikitLearn"]
title: "Project 2: Titanic - ¿Who survived?"
---

## Context:
Like a data scientist, i have made educational project to help myself and other to go deeply into data science popular tools and methods. In that way, this project has educational purpose, I will go through with EDA to response the principal questions over a tragedy like Titanic was, like what characterize to survivors or if the wealthiness is a factor. Also features engineer to fix the data missing o for create more features to better understand, and finally proceed with classification model that going to predict if a passenger survives basing of his features in the data set all this in the context of a Kaggel’s contend. 

## Background
Understand the relationship between the circuntances and the outcome, that finished the life of 549 human lifes. What characterized to the people, why they survived and what factors pushed his probabilities to survive are the main question that i going to review in this notebook.

## Project Planning
    * Bonus: Automatic EDA in github

## EDA

* Understand the data behavior <p>
  1.0 Histograms<p>
  ![](/images/project2/numerica_hist.png)
  2.0 Barchars <p>
  ![](/images/project2/char_catg.png)
  3.0 Value counts <p>
  4.0 Missing data<p>
  5.0 correlations of some features<p>
  ![](/images/project2/corr.png)
* Explore interesting themes <p>
  1 Rich people survive more?<p>
  ![](/images/project2/pcall_survive.png)

  2.0 Young people survive more? <p>
  ![](/images/project2/survive_age.png)

  3.0 Female survive more?, what about kids and old people<p>
  ![](/images/project2/survive_catg_data.png)

  4.0 How the fare payment affects the survival<p>
   ![](/images/project2/survive_fare.png)

  5.0 Your title name affects your chances to survive<p>

|           |  Miss |  Mr | Mrs  |Others|
|-----------|-------|-------|-------|-------|
|Survived |      |        |      |     |
|NO        |            55  |436  | 26     | 32|
|YES        |          127  | 81  | 99     | 3|

  5 Where did you embarked, affects your chance to survive<p>
  ![](/images/project2/embark_surv.png)

  6 Be alone affects your chance to survive ¿? <p>

  7 The quantity of cabin that was bought per passenger affects the survival   ¿?

## Feature Engineering
* Create more features
* Fill nan values
* Normalize data
* Try to categorize data and see what happened ¿is good?
* Preprocess data for numerical and categorical data
* Understand the limitations of the data – imbalance data
* Apply a method to balance the data


## Modeling
* Model tunning
* Model benchmark

| Model  | score  | 
|---|---|
| SVC  |    0.8907 |  
| XGB  | 0.8843 | 
| KNC  |   0.9335|
| RFC |    0.9690 |
| Voting XGB+KNC+RFC| 0.9526| 


## Conclusions
* We can see that people who survive have this principal characteristic, they are females, or they wealthy and in third place is the age. Take in count that being wealthy is correlated with your type of class like a passenger or if you bought Cabins.

* Another factor like been alone without parents is a factor that could decrease your chances to survive around 30%

* I observe that been wealthy is a big factor to survive, however be a woman if another big factor to survive in that kind of context, because in navy there is a quote ["Women and children’s first"]
(https://en.wikipedia.org/wiki/Women_and_children_first)

[GitHub - Project 2: Titanic - ¿Who survived?](https://github.com/DavidCastilloAlvarado/titanic_kaggle)

[Kaggle - Project 2: Titanic - ¿Who survived?](https://www.kaggle.com/scarecrow2020/titanic-study-by-david-castillo)

