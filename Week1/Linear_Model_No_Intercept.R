
mydata = read.csv('https://raw.githubusercontent.com/gitcnk/Pioneer_Spring2026/refs/heads/main/Week1/Salary_data_for_GD.csv')


x = mydata$Hours_work
y = mydata$Salary

n = nrow(mydata)

plot( x, y )
