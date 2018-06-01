#Linear Regresion
Age = c(18,23,25,35,65,54,34,56,72,19,23,42,18,39,37)
MaxRate = c(202,186,187,180,156,169,174,172,153,199,193,174,198,183,178)

plot(Age, MaxRate)
#cor(Age, MaxRate)
abline(lm(MaxRate~Age))
lm(MaxRate~Age)
#or
library(UsingR)
lm.result = simple.lm(Age, MaxRate)
summary(lm.result)

#coeff - b_0, b_1
coef(lm.result)
lm.result[["coefficients"]]
lm.result$coefficients

#finding the coef - using formula

b1 = sum(Age - mean(Age)) * (MaxRate - mean(MaxRate))
b1
b0 = mean(MaxRate) - b1*mean(Age)
b0

#residuals
resid(lm.result)
lm.result[["residuals"]]
lm.result$residuals

summary(resid(lm.result))

#find the resuduals - formula
yhat = b0 + b1*Age

e = MaxRate - yhat
summary(e)


#testing the assumption

plot(lm.result)
simple.lm(Age, MaxRate, show.residuals = TRUE)
#outliers : 1, 7, 13

#statistical inference:

#sse = sum(e_i^2)
#mse = sse/(n-r-1)

SSE = sum(e^2)
SSE
n = length(MaxRate)
MSE = SSE/(n-2)
MSE

#residual standart error
#s = sqrt(MSE)
