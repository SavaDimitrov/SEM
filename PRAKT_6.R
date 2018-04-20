#pbinom(3, 10, 1/6)
#P(x <= 3) = ?

#qbinom(0.3, 10, 1/6)
#P(x <= q) = 0.3 ## q = ?

#### TASKS ####

### uchebnik 51 stranica
##6.1 : x ~ U(0,1)

x = runif(10, min = 0, max = 10); x
min(x)
max(x)


##6.2 : 

x = rnorm(10,5,5)
sum(x<0)
pnorm(0,5,5)

##6.3 :
x = rnorm(100, 100, 10)
sum(x < 80 | x > 120)

##6.4
#1(__________)50
x = rbinom(1,50,0.5)
sum(x)
#bernuli
x = rbinom(50,1,0.5)
sum(x)

##6.6 :
x = sample(1:49, 6, replace = FALSE)
x
min(x)
max(x)

##6.7 :
qnorm(0.05, 0, 1)
#6.8 :
qnorm(0.025, 0, 1)
qnorm(1-0.025, 0, 1)