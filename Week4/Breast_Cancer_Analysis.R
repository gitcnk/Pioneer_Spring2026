## Classification Trees

## Task: To classify patients into (Cancer or Non cancer) groups
##       based on their attributes.

## Data Source: UC Irvine ML repository.

library(tidyverse)
library(rpart)
library(randomForest)
library(visNetwork)
library(ggthemes)
library(plotly)


breast_cancer <- read.csv('https://raw.githubusercontent.com/gitcnk/Data/refs/heads/master/breast_cancer.csv')


## Step 1:
## Convert your Y variable (target) in to a factor.
## This step is useful for plotting and model building.
breast_cancer |>
  mutate( status = as.factor(status)) |> glimpse()


breast_cancer |>
  ggplot() +
  aes( x = concave.points, y = status, col = status) +
  geom_jitter(height = 0.2, alpha = 0.8)  +
  theme_economist() +
  theme(legend.position = 'right') -> myplot

myplot |> ggplotly()


## Build the tree model
mytree = rpart(status ~ . , data = breast_cancer)
mytree |> visTree()


