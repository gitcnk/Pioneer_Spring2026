breast_cancer <- read.csv('https://raw.githubusercontent.com/gitcnk/Data/refs/heads/master/breast_cancer.csv')

# Create a training set and testing set
# There are 569 patients in the full dataset.
# We are going to use 500 to train our models.
# We can use the rest of the 69 to validate(test) our models.

ix = seq(1,569)

train_ids = sample(ix, size = 500)

train_set = breast_cancer[ train_ids, ]  # This has 500 cases
test_set = breast_cancer[ -train_ids, ]  # This has 69 cases
 
## For the following models use the training dataset
### 1. Fit a tree model 

### 2. Fit a random forest model

### 3. Fit a boosting model

### 4. Evaluate the accuracy of these 3 models using the test set
