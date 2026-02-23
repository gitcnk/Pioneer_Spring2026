## HW on Gradient Descent

1. Inside the 'Week2' folder you'll find a code titiled 'quadratic function'.  Write a gradient descent code to find the mininmum of this function.  Please attach your code and the output.  If you are ambitious, you can add a visualization to show how the algorithm move from the inital guess to the correct minimum.  

2. Now start with the initial estimate x = -1 and step size 'alpha' = 1.  Run your code and you'll see that the estimates jumps back and forth to x= -1, and x=5.  Prove (by hand) why this happens.  I encourage you to NOT use GPT for this.  I want you to really think about what happens.  Please draw a picture on a paper and do the gradient descent step bu hand calculations.  Then you'll see what is going on.  Attach all of your hand written work and hand drawn plots.

 

3. Similar to #1 above, start with x = -1, but alpha = 0.5.  Run the code and you'll see that the estimate jumps straoght to x = 2 (the correct solution) and stays there.  Prove (as before) why this happens.  

 

4.  Use the Salary Data example that we used in class.  The model we used is a linear model with **no intercept** because if you didn't work (0 hours) your wage will be zero.  Suppose someone forgot about his idea and fit a regular linear model with an intercept.

`mymodel = lm( y ~ x )`

- Find the slope and intercept of this model using the `lm` funciton in R.
- If you do this correctly, you'll find that the intercept estimate is about 5.6.  Is there a meaning to this value?  Your immediate answer might be 'No' because, we should not have an interceot to begin with.  But, I want you think harder and ask could there be another interpretation?
- Write a program using the 'M' approach, to find the 'best' estimates for the 'slope' and 'intercept' of the regression line.  Attach your code and output.

***Hint:  You'll have to use two for-loops.***

- Write a program usng the 'L' approach (gradient descent) to find the slope and intercept. Attach your code and output.

 5. [**Hard**]  Consider the follwing two equations:

$$ 3a + 4b = 10 $$
$$ 10a - 5b = 17 $$

It is easy to find the values (no need to do it) of 'a' and 'b' from these two equations.  

No to the actual problem:  consider a modified version of these two eqauations:

$$ 3^a + 4^b = 10 $$
$$ 10^a - 5^b = 17 $$

It is not possible to solve these two equations easily.  These are called non-linear equations.

Your Task:  
- Go to Desmos (desmos.com) and plot these two curves and find the solution.  If you do this correctly, you'll see that the solutions is $ (a = 1.383, b = 1.221) $.   
- Now write a gradient descent code to solve these two equations using the mean squared error loss function.

***Hint: Think about what is $y(true)$ and $\hat y (prediction)$ in this case.***



