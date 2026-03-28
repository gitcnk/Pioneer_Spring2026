## This HW is on Classification Trees and Forests

Open the `credit_card_fraud.R` file.  It contains the code to access the data and start your HW. Look at what we did in class regarding breast cancer prediction and follow the same steps to work on this HW.

Descriptions of variables can be found here: 

https://archive.ics.uci.edu/dataset/350/default+of+credit+card+clients

1. Our goal is to predict the variable `default_payment_next_month (Y)`, using many predictors like loan amount, balance in the past 3 months, etc. If you examine the data you'll see that the variable Y is coded as 1(or 0).  As the first step, covert the response variable, Y to a factor. Attach your output to confirm that you variable is a factor.  You can do this by running the command 'str' 

2. Now construct a tree model to predict `(Y)` using all predictors.  Attach the plot of your tree.  If you do this right, your tree will have only one split.

3. In order to see what other variables might be relavent, we can tweak the 'complexity parameter (cp)' of the tree model.  You can do this by adding `... cp = 0.002 , ...' in your `rpart()` command.  Smaller values increases the depth of the tree.  What variables seem to be relavent in predicting credit default?

4. Think about all the predictors in your model and ask yourself why the tree model picked 'PAY_0' as the first splitting variable?  Don't think about a mathematical reason, think about a practical reason.

5. Click on the root note.  You'll see that about 22% of the people have defaulted.  Now click on the right hand node. Carefully examine the numbers.  Do the same with the left habd node. Do you think the model was able to separate the defaults from non-defaults effectively?  Breifly explain.

**Note:**  *We have not learned what the loss function the tree used, but this is an opportunity to think about it (don't ask GPT)*

6. Now construct a random forest model to do the same task.  Use 100 trees and use 3 randomly chosen predictors for each split of the trees.
Use the `varImpPlot` command to construct the plot of 'variable importance' for your forest model. What are the 3 main predictors that strongly related to credit defaults?


**Extra Credit**

Look at the code we used for crime rate predictions.  At the very end, I added a code to create a nicer looking plot for the variable of importance.  Use that code as a guide and create a similar plot for the credit default model.  You might have to change few lines to make it work.  This is a good exercise for you to read the code and understand what each line is doing.  Hopefully this is a fun challenge!
