mydata <- read.csv("https://raw.githubusercontent.com/gitcnk/Data/refs/heads/master/Stat254/student-mat.csv", sep = ";")

library(dplyr)
library(ggplot2)

library(rpart)
library(sparkline)
library(visNetwork)


# Predict the performance of the 3rd grading period (G3) 
# using the scores from grading period 1 and 2, study time, and 
# number of absences as predictors.

mytree <- rpart(G3 ~ G1 + G2 + studytime + absences, data = mydata)

mytree |> visTree()




# Tree with control to show only the first split
mytree_level1 <- rpart(G3 ~ G1 + G2 + studytime + absences,
                       data = mydata,
                       control = rpart.control(maxdepth = 1))
                
                

mytree |> visTree()

print(mytree_level1)
