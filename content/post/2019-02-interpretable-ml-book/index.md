---
author: Bodo Burger
categories:
- Books
date: '2019-02-26'
draft: False
output:
  md_document:
    toc: False
    variant: 'markdown+yaml\_metadata\_block'
tags:
- Interpretable ML
- explainable AI
title: Interpretable Machine Learning by Christoph Molnar
---

Digital version can be bought on
[leanpub](https://leanpub.com/interpretable-machine-learning). You can
find a free online version of the book here:
<https://christophm.github.io/interpretable-ml-book>

The introduction covers three short stories that illustrate the
detrimental consequences of a world controlled by black box machine
learning models
([1.1](https://christophm.github.io/interpretable-ml-book/storytime.html)).
They serve as motivation for why we want to use methods that improve
understanding of an opaque model. The goal is that a human can
understand a model so that he can consistently predict its results.

[Chapter
2](https://christophm.github.io/interpretable-ml-book/interpretability.html)
lays the foundation for the discussion on machine learning
interpretability by answering the following questions:

-   Why is interpretation important and when do we need it
    ([2.1](https://christophm.github.io/interpretable-ml-book/interpretability-importance.html))?
-   How can we classify different interpretation methods
    ([2.2](https://christophm.github.io/interpretable-ml-book/taxonomy-of-interpretability-methods.html))?
    -   intrinsic vs post-hoc methods
    -   result of the method
    -   model-specific vs model-agnostic
    -   local vs global
-   Which part of a model do we want to inspect
    ([2.3](https://christophm.github.io/interpretable-ml-book/scope-of-interpretability.html))?
-   How do we evaluate the interpretation
    ([2.4](https://christophm.github.io/interpretable-ml-book/evaluation-of-interpretability.html))?
-   What does a human need to know to understand a black box model
    ([2.6](https://christophm.github.io/interpretable-ml-book/explanation.html))?

The presented interpretation methods are repeatedly applied to three
freely available data sets representing different kinds of prediction
tasks: [daily bike
rentals](http://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset)
(regression), [cancer risk
factors](https://archive.ics.uci.edu/ml/datasets/Cervical+cancer+%28Risk+Factors%29)
(classification) and [YouTube spam
comments](dcomp.sor.ufscar.br/talmeida/youtubespamcollection/) (text
classification). [Chapter
3](https://christophm.github.io/interpretable-ml-book/data.html)
introduces the datasets in more detail.

Interpretable models
--------------------

This chapter presents models that are interpretable by itself. For
Molnar these are

-   linear regression
-   logistic regression
-   decision trees
-   decision rules
-   RuleFit ([Friedman and Popescu,
    2005](http://statweb.stanford.edu/~jhf/ftp/RuleFit.pdf))
-   naive Bayes
-   k-nearest neighbors

These models have in common that the result is accessible to the user
without further steps. They differ in regards to linearity,
monotonicity, the possibility to include feature interactions and the
tasks they can handle.

The interpretation of linear regression is straightforward. We compute a
coefficient (or a weight in ML terminology) for each feature that tells
us how much the predicted target increases if we increase the
corresponding feature by one unit, all other features held constant.
(Effect
plots)\[<https://christophm.github.io/interpretable-ml-book/limo.html#visual-interpretation>\]
can help to understand a feature's contribution to the prediction.
