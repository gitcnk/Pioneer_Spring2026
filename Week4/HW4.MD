## This HW is on Classification Trees and Forests

Open the `credit_card_fraud.R` file.  It contains the code to access the data and start your HW. Look at what we did in class regarding breast cancer prediction and follow the same steps to work on this HW.

Descriptions of variables can be found here: 

https://archive.ics.uci.edu/dataset/350/default+of+credit+card+clients

1. Our goal is to predict the variable 'default_payment_next_month (Y)`, using many predictors like loan amount, balance in the past 3 months, etc. If you examine the data you'll see that the variable Y is coded as 1(or 0).  As the first step, covert the response variable, Y to a factor. Attach your output to confirm that you variable is a factor.  You can do this by running the command 'str' 

2. Now construct a tree model to predict `(Y)` using all predictors.  Attach the plot of your tree.  If you do this right, your tree will have only one split.

3. 


use the 'varImpPlot' command to construct the plot of 'variable importance'
