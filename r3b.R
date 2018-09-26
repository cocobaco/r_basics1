# qualitative predictors

library(ISLR)
head(Carseats)
dim(Carseats)
names(Carseats)

# regular numeric predictor
lm1 = lm(Sales ~ Price, data=Carseats)
summary(lm1)

dev.new()
plot(Carseats$Price, Carseats$Sales)
abline(lm1)

# qualitative predictor
# R automatically create dummy variables
table(Carseats$ShelveLoc)

lm2 = lm(Sales ~ ShelveLoc + Urban + US, data=Carseats)
summary(lm2)

contrasts(Carseats$ShelveLoc)