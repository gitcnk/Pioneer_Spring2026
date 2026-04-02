## Boosting.

- Boosting is a methodology.  It is NOT a model.  
- In boosting we are going to fit a series of models sequentially, each dependent on the one before to improve the accuracy in prediction.
- In contrast, random forest models uses the idea of `bagging`(`B`ootstrap `agg`regation) to fit a series of models.
- You can use boosting to 'boost' any simple model.  We can boost linear models, trees, logistic models, etc.  But typically, trees are the main building block for most boosting algrorithms.  If we want to boost, say a linear model, we have to program it ourselves.
