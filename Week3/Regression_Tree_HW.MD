## Please answer the following questions:

1. Create two tree models to predict the final grades (G3) using the 'School Performance Data' that we used in class.  
    -  First tree: Use all the 32 X-variables;
    -  Second Tree: Exclude G1 and G2 from the model.  That means use 30 X-variables. 

2. Compare the accuracy of the two models by using mean-squared error(MSE) as a performance metric. That is, calulate the MSE for each model.

3. Compare the accuracy of both models using a graphical method.  That is, for each model, compute the predicted values for all students and compare that with the actual grades of the students.  You can do the by using the `predict()` function.  Make a simple scatterplot using `ggplot` where the X-axis represents the actual grades and the Y-axis represents the predicted grades from the tree.  


4. What is the main advantage (if any) in constrcting a tree model by excluding the two variables G1 and G2?  Briefly explain your answer.


**Extra credit:** This is a coding challenge.  Consider the model $$G3 ~ G2 + G1 + Study$$ that we used in class to answer the following:

1. Implement the first split of the regression tree 
2. Plot the loss funtion values (mean square error) for each iteration.  (x-axis =iterration, y -axis= loss).  Attach your plots.  You shuld have 4 plot for the 4 prdictors
3. Compare your split point, say **xstar** with the R-function rpart.  You should get the same split point (G2 > 10) that we got from `rpart`.
