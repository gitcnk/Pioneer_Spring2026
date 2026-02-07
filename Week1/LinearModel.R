# Generate random data in which y is a noisy function of x
n <- 100
x <- runif(n, -5, 5)
error <- rnorm(n, mean = 0, sd = 1)
y <- 2 + 3*x + error

plot(x,y)

# fit a linear model
mymodel <- lm( y ~ x )

abline(coef(mymodel),
       col = 'red')


# squared error loss function
loss <- function(x, y, a,b) 
{
  yhat <- a + b*x
  (1/n)*(sum(y - yhat)^2)
}

