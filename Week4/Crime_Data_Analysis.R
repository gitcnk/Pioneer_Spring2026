## Communities and Crime
## https://archive.ics.uci.edu/dataset/183/communities+and+crime

crime_data = read.csv('https://raw.githubusercontent.com/gitcnk/Pioneer_Spring2026/refs/heads/main/Week4/communities_crime.csv')

library(tidyverse)
library(rpart)
library(sparkline)
library(visNetwork)
library(randomForest)
library(ggthemes)



## Linear Model

mylm = lm(ViolentCrimesPerPop ~ . , data = crime_data)


lm_predictions = predict(mylm)
true_values = crime_data$ViolentCrimesPerPop


ggplot() +
  aes( x = true_values, y = lm_predictions) +
  geom_point(col = 'lightblue') +
  geom_abline(intercept = 0, slope = 1, col = 'red')


MSE_lm = mean( (true_values - lm_predictions)^2)



## Tree model

mytree = rpart(ViolentCrimesPerPop ~ . , data = crime_data)
mytree |> visTree()


tree_predictions = predict(mytree)

ggplot() +
  aes( x = true_values, y = tree_predictions) +
  geom_point(col = 'lightblue') +
  geom_abline(intercept = 0, slope = 1, col = 'red')


MSE_tree = mean( (true_values - tree_predictions)^2)


### Forest Model





### SUMMARY
MSE_lm
MSE_tree
MSE_forest




### Extra Credit
### Let's make a nicer plot

myforest$importance |>
  data.frame() |>
  rownames_to_column() |>
  rename('predictor' = 'rowname') |>
  rename('error_reduction' = 'IncNodePurity') |>
  filter(error_reduction > 2) |>
  ggplot() +
  aes(x = reorder(predictor, error_reduction),
      y = error_reduction) +
  geom_col(col = 'lightblue') +
  coord_flip() +
  labs( title = 'Crime Data Analysis - Random Forest Model',
        subtitle = 'Source: UCI ML Repository',
        x = 'predictor') +
  theme_economist()

