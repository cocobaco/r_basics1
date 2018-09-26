# http://www-bcf.usc.edu/~gareth/ISL/code.html

#------ basic commands
x = 3
y = 5
x * y
x <- c(1, 2, 4, 6, 9)
x
x = c(1, 2, 4, 6, 9)
x
y <- c(3, 5, 2, 1)
y
length(x)
length(y)
x + y
ls()
rm(x,y)
ls()
x = seq(1,10)
x
x=1:10
x
?matrix
x = matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x
y = matrix(data=c(1,2,3,4), byrow=TRUE, nrow=2, ncol=2)
y
sqrt(x)
y^2
SIZE = 30
set.seed(1303)
rnorm(SIZE)
runif(SIZE ,-2, 2)

#------ basic stats -----
x=rnorm(SIZE)
y=x+rnorm(SIZE ,mean=20,sd=.1)+runif(SIZE ,-1,1)
x
y
cor(x,y)
set.seed(3)
z=rnorm(100)
mean(z)
var(z)
sqrt(var(z))
sd(z)

#------ plot -----
plot(x,y)
plot(x, y, type='b', col='green', 
	main='plot y against x', xlab='x name', ylab='y name')
hist(z, breaks=30)
x=seq(-pi, pi, length=50)
y=sin(x)
plot(x,y,col='red', pch=4)

#------ indexing data -----
A=matrix(1:16,4,4)
A
dim(A)
A[2,3]
A[c(1,3),c(2,4)]
A[1:3,2:4]
A[1:2,]
A[,1:2]
A[1,]
A[-c(1,3),]
A[-c(1,3),-c(1,3,4)]

#------- loading data --------
Auto = read.table('Auto.data', header=TRUE)
head(Auto)
dim(Auto)
names(Auto)
plot(Auto$weight, Auto$mpg, col='red')
hist(Auto$mpg, breaks=20, col=2)
pairs(~ mpg + horsepower + weight + acceleration, Auto)
summary(Auto)
summary(Auto$mpg)