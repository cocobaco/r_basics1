#------- linear regression --------
Auto = read.table('Auto.data', header=TRUE)

lm1 = lm(mpg ~ weight, data=Auto)
lm1
attributes(lm1)
plot(Auto$weight, Auto$mpg, col='red')
lines(Auto$weight, lm1$coefficients[1] + lm1$coefficients[2]*Auto$weight, 
      col='green')


library(MASS)
# https://www.cs.toronto.edu/~delve/data/boston/bostonDetail.html
# housing median value
Boston
names(Boston)
summary(Boston)

lm2 = lm(medv ~ crim, data=Boston)
summary(lm2)

lm3 = lm(medv ~ crim + lstat + ptratio, data=Boston)
summary(lm3)
names(lm3)
coef(lm3)
confint(lm3)