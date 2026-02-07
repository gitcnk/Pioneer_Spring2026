# Use the  ``gapminder`` dataset to answer the following questions:

1. Create a new dataframe with counties in Africa for year 2002. Use only the following variables:
- Country
- Life expectancy
- Population

Name this new dataframe as ``mydata``

2. Now work with ``mydata``. Create a new variable, call it ``Life_Exp_Level`` based on the life expectancy of each country using the following rules:
- If life expectancy < 45 then label them as 'low'
- If life expectance is between 45 and 70 then label them as 'average'
- If it is higher than 70 then label as 'high'.

3. Draw a scatterplot to show the relationship beteween size of the population and life expectancy.  Do you think there is a strong relationship?

4. Color the points of the scatterplot based on the life expectancy level (low, avg, high).

5. Write a code using ``dplyr`` syntax and $$\color{red}verbs$$ to list the names of the contiries with 'low' life expectancy.


