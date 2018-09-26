getwd()

#------- linear regression --------
Auto = read.table('Auto.data', header=TRUE)

# lm(y~x, data) = linear model
# syntax: y = response, x = predictor
lm1 = lm(mpg ~ weight, data=Auto)
lm1
attributes(lm1)
plot(Auto$weight, Auto$mpg, col='red')
lines(Auto$weight, lm1$coefficients[1] + lm1$coefficients[2]*Auto$weight,
      col='green')


library(MASS)
# https://www.cs.toronto.edu/~delve/data/boston/bostonDetail.html
Boston
names(Boston)
summary(Boston)
names(Boston)

# medv = housing median value
lm2 = lm(medv ~ crim, data=Boston)
summary(lm2)
# make predictions for different crim values
# 95% confidence interval
predict(lm2, data.frame(crim=c(2, 4, 8, 10)), interval='confidence')

plot(Boston$crim, Boston$medv, pch=17, cex=2, col='blue')
abline(lm2, col='green', lty=2, lwd=3)

# diagnostic plots
# split plot region into 2x2 grid of panels
par(mfrow=c(2,2))
plot(lm2)

lm3 = lm(medv ~ crim + lstat + ptratio, data=Boston)
summary(lm3)
names(lm3)
coef(lm3)
# confident interval for coefficients
confint(lm3)

# fit using all variables except one
lm4 = lm(medv ~ . - age, data=Boston)
summary(lm4)

# fit using interaction terms
lm5 = lm(medv ~ lstat * age, data=Boston)
summary(lm5)

# fit using polynomial
lm6 = lm(medv ~ poly(lstat, 5), data=Boston)
summary(lm6)

