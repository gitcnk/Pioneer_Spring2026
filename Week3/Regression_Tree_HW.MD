## Please answer the following questions:

1. Create two tree models to predict the final grades (G3) using the 'School Performance Data' that we used in class.  
    -  First tree: Use all the 32 X-variables;
    -  Second Tree: Exclude G1 and G2 from the model.  That means use 30 X-variables. 

2. Compare the accuracy of the two models by using mean-squared error(MSE) as a performance metric. That is, calulate the MSE for each model.

3. Compare the accuracy of both models using a graphical method.  That is, for each model, compute the predicted values for all students and compare that with the actual grades of the students.  You can do the by using the `predict()` function.  Make a simple scatterplot using `ggplot` where the X-axis represents the actual grades and the Y-axis represents the predicted grades from the tree.  


4. What is the main advantage (if any) in constrcting a tree model by excluding the two variables G1 and G2?  Briefly explain your answer.


**Extra credit:** This is a coding challenge.

Consider the model that we used in class:
  
$$ G3 \sim G2 + G1 + Study Time + Absences $$ 

When we ran our `rpart()` command we got the full tree with the first split variable as G2 > 10.5 .  Your task is to write a code to find this split variable and the corresponding split value.  

1. Implement the first split of the regression tree. Attach your code.

2. Plot the loss funtion values (mean square error) for each iteration and for each $$X$$ variable.  (x-axis = iterration, y-axis = loss).  Attach your plots.  You shuld have 4 plot for the 4 prdictors.

3. Compare your split point, say **xstar** with the one we got from `rpart`.  You should get the same split point (G2 > 10.5) or someting close.
