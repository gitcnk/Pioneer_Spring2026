## HW on Boosting

`
library(tidyverse)
library(adabag)


breast_cancer <- read.csv('https://raw.githubusercontent.com/gitcnk/Data/refs/heads/master/breast_cancer.csv')

# Create a training set and testing set
#

ix = seq(1,569)

train_ids = sample(ix, size = 500)

train_set = breast_cancer[ train_ids, ]
test_set = breast_cancer[ -train_ids, ]
 

`


1. 
