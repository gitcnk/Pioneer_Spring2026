## HW on Boosting

This part of the HW is on concepts.

1. In class we proved that the Gini index for two group classification as: 

$$ Gini = \hat p_1(1-\hat p_1) + \hat p_2(1-\hat p_2) $$

Extend this to 3 group classification.  For example, if we have 3 classes: Cancer, Non-Cancer, Unclear, show that the Gini index is:

$$ Gini = \hat p_1(1-\hat p_1) + \hat p_2(1-\hat p_2) + \hat p_3(1-\hat p_3) $$

2. In the boosting algorithm we have a weight update rule as follows:

$$ w_i^{[k+1]} = w_i^{[k]} ( \beta^{[k]} )^{miss_i} $$

where $w_i^{[k]}$ is the weight of the $i^{th}$ person and $\beta^{[k]}$ is the goodness of the tree
at the $k^{th}$ boosting iteration.

Explain in a few sentences what this formula is doing and why it makes sense.

-----




*Extra credit*

Note that $\beta^{[k]}$ is a non-linear function of the misclassification error.   

That is:  $$\beta^{[k]} = \frac{1 - error^{[k]}}{error^{[k]}} $$ 

Explain why the non-linear form is approriate for our boosting algorithm.


---------

This part of the HW is on applications:

Goal: Fit and evaluate two models `(tree and forest)` and compare them with the `boosting` algorithm.


1. Use the given R-code `(HW5.R)` to load the breast cancer dataset. There are 569 patients in the full dataset.  We are going to use 500 to train our models.  We can use the rest of the 69 to validate(test) our models.

2. Create the confusion matrix (a table of actual and predicted class labels) for each of the models using the test data.  Which model seems to be accurate?  Use the overall error rate to answer this question.

Note: you can use the `predict()` function to find the predicted probability(or class).  Use the test data for the newdata argument

Example:  `predict(mytree , newdata = test_data)`

You might have to play around with this function for each model.  Feel free to use GPT for assistance. 

3. As you can see the overall error rate consistes of two errors:
  - cancer classified as non-cancer
  - non-cancer classifed as cancer

Which error is more serious?  Briefly explain.

4. Based on the more serious error, which model seems to be more accurate?

5. What are the most relavent variables in predicting cancer in all three models?  If you have to pick one (or two) key predictors among the 3 models, which variables do you pick.

---------




 
