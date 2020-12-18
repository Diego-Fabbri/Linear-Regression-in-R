
#Data set taken from: https://www.kaggle.com/andonians/random-linear-regression

# IMPORT .csv File
                               #insert your own file path
Linear.Regression <- read.csv("~/R/Projects/GitHub_Projects/Linear Regression.csv")

View(Linear.Regression)
dim(Linear.Regression)

# PLOT DATA

library(ggplot2)
ggplot(data = Linear.Regression, aes(x = x, y = y)) +
  geom_point(color='black') +
  geom_smooth(method = "lm", se = FALSE ,color = "red")

y_VS_x <- lm(y ~ x, data=Linear.Regression)
summary(y_VS_x)


#EXPORT DATA IN A  .xlxs FILE

#install.packages("xlsx")
#install.packages("writexl")
library("xlsx")
                               #insert your own file path
write.xlsx(Linear.Regression,"~/R/Projects/GitHub_Projects/Linear Regression.xlsx")

