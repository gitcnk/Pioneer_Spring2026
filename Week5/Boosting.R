library(tidyverse)
library(adabag)


breast_cancer <- read.csv('https://raw.githubusercontent.com/gitcnk/Data/refs/heads/master/breast_cancer.csv')


## B - Benign - non-cancer
## M - Malignant - cancer


# Let's look at our data first

breast_cancer |>
        glimpse()


## Step 1:
## Convert your Y variable (target) in to a factor.
## This step is useful for model building plotting.

breast_cancer |>
  mutate( status = as.factor(status)) -> breast_cancer


## Fit the model
## We are going to use a simple tree with one split
## as our building block.

## Definition of model parameters:

# 1. mfinal: controls how many boosting iterations to perform
# 2. control: other control parameters to be passed to the tree model
#             like the depth of the tree, min number for each node, etc.

# The following model fits 100 trees sequentially. 
# Each tree is simple (just one split). 
# Each tree depends on the one before.

boosted_model = boosting(status ~ . ,
                         mfinal = 100,
                         control = rpart.control(maxdepth = 1),
                         data = breast_cancer )
                         


# View the model.  This is not very useful because it ouputs EVERYTHING!
print(boosted_model)


# Let's evaluate the model.  
# How good are the predictions?



# Which variables are highly correlated with Cancer?


