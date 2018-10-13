dataset = read.csv('Salary_Data.csv')

library(caTools)
set.seed(123)
split=sample.split(dataset$Salary,SplitRatio = 2/3)
training_set = subset(dataset,split == TRUE)
test_set = subset(dataset,split==FALSE)


#Simple Linear Regression
regressor = lm(formula = Salary~YearsExperience, training_set)

#predicting test set results
y_pred = predict(regressor, newdata = test_set)

