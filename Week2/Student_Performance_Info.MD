## Here are the variable names and their code descriptions.


- school - student's school (binary: "GP" - Gabriel Pereira or "MS" - Mousinho da Silveira)
- sex - student's sex (binary: "F" - female or "M" - male)
- age - student's age (numeric: from 15 to 22)
- address_type - student's home address type (binary: "Urban" or "Rural")
- family_size - family size (binary: "Less or equal to 3" or "Greater than 3")
- parent_status - parent's cohabitation status (binary: "Living together" or "Apart")
- mother_education - mother's education (ordinal: "none", "primary education (4th grade)", "5th to 9th grade", "secondary education" or "higher education")
- father_education - father's education (ordinal: "none", "primary education (4th grade)", "5th to 9th grade", "secondary education" or "higher education")
- mother_job - mother's job (nominal: "teacher", "health" care related, civil "services" (e.g. administrative or police), "at_home" or "other")
- father_job - father's job (nominal: "teacher", "health" care related, civil "services" (e.g. administrative or police), "at_home" or "other")
- reason - reason to choose this school (nominal: close to "home", school "reputation", "course" preference or "other")
- guardian - student's guardian (nominal: "mother", "father" or "other")
- travel_time - home to school travel time (ordinal: "<15 min.", "15 to 30 min.", "30 min. to 1 hour", or 4 - ">1 hour")
- study_time - weekly study time (ordinal: 1 - "<2 hours", "2 to 5 hours", "5 to 10 hours", or ">10 hours")
- class_failures - number of past class failures (numeric: n if 1<=n<3, else 4)
- school_support - extra educational support (binary: yes or no)
- family_support - family educational support (binary: yes or no)
- extra_paid_classes - extra paid classes within the course subject (Math or Portuguese) (binary: yes or no)
- activities - extra-curricular activities (binary: yes or no)
- nursery - attended nursery school (binary: yes or no)
- higher_ed - wants to take higher education (binary: yes or no)
- internet - Internet access at home (binary: yes or no)
- romantic_relationship - with a romantic relationship (binary: yes or no)
- family_relationship - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
- free_time - free time after school (numeric: from 1 - very low to 5 - very high)
- social - going out with friends (numeric: from 1 - very low to 5 - very high)
- weekday_alcohol - workday alcohol consumption (numeric: from 1 - very low to 5 - very high)
- weekend_alcohol - weekend alcohol consumption (numeric: from 1 - very low to 5 - very high)
- health - current health status (numeric: from 1 - very bad to 5 - very good)
- absences - number of school absences (numeric: from 0 to 93)


## These grades are related to the Math exam grades. 
*Note: Portuguese exam grades are available in a separate file*

- G1 - first period grade (numeric: from 0 to 20)
- G2 - second period grade (numeric: from 0 to 20)
- G3 - final grade (numeric: from 0 to 20, target variable)
