#ANOVA
x = c(4,3,4,5,2,3,4,5)
y = c(4,4,5,5,4,5,4,4)
z = c(3,4,2,4,5,5,4,4)
scores = data.frame(x,y,z)
boxplot(scores)

scoresStack = stack(scores) # look at scores if not clear
names(scores)

oneway.test(values ~ ind, data=scoresStack, var.equal=T)

df = stack(data.frame(x,y,z)) # prepare the data
oneway.test(values ~ ind, data=df,var.equal=T)
anova(lm(values ~ ind, data=df))

summary(lm(values ~ ind, data = scoresStack))

#summary(aov(values~ind,))


#TASK
library(UsingR)
InsectSprays
boxplot(InsectSprays$count~InsectSprays$spray)
#norm razpred. i nezavisimi
anova(lm(count ~ spray, data = InsectSprays))

summary(InsectSprays$count~InsectSprays$spray)


#unstacking
a = unstack(InsectSprays)
a
shapiro.test(a$A)
#za vsichki za da proverim dali sa norm razpred


##ZA TESTA
#2)
x = c(1,2,3,3)
max(sort(x))
which(x == max(x))

#4)
x = rexp(300, 1/20)
x
tmp = hist(x)
#curve(expr = dexp(x,1/20), from = 0, to = 100, by = 0.1 , add = TRUE)

pexp(17, 1/20)

pexp(22, 1/20 - pexp(17, 1/20))

#plutnost - f(21)
dexp(21, 1/20)

#P(10 < alpha < x0) = 0.5 - izchislete x0
qexp(pexp(10,1/20) + 0.5, 1/20)
#      P(x < 10)   + P(0 < x < const)


