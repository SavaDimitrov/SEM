typos = c(2,3,0,3,1,0,0,1)
typos #Comment
typos <- c(2,3,0,3,1,0,0,1)
print(typos)

##Data types
#logical
#integer
#numeric(double)
#complex
#character

##logical
x = 1
y = 2
z = x > y
class(z) #vrushta tipa na z

#Some more examples
u = TRUE
v = FALSE
u&v
u|v
!u
#some more info
help("&")

##integer
y = as.integer(3) #preobrazuva y v integer
y
class(y)

##character
s = "statistics"
s
class(s)
str(s)

##some transformations
#...

#vector
#matrix
#data frame

##vector
i = c(1,2,3)
j = c(5,6,7,8,9,10)
l = c(TRUE,FALSE)
s = c("s","t","a")
#...

seq(1,17,by = 2)
rep(1:4,2)
rep(1:4, each = 2) #1,2,3,4 -> 11 22 33 44
length(s)
c("love", s)

5*i
i+j
j-i
i*j
#i\j

##matrix
A = matrix(c(2,4,1,5,7,6),
           nrow = 2,
           ncol = 3,
           byrow = TRUE)
A
B = matrix(c(2,4,3,1,5,7),
           nrow = 3,
           ncol = 2)
B

dim(B)
A[2,3]
A[2,]
A[,3]
A[,c(1,3)]
A+3
G = matrix(c(rep(1:2,3)), nrow = 2)

##data frame
n = c(2,3,5)
s = c("aa","bb","cc")
b = c(TRUE, FALSE, TRUE)
df = data.frame(n,s,b)
df
View(df)

?install.packages
help("instanll.packages")
install.packages("UsingR")
library(UsingR)
install.packages("MASS")
library(MASS)
?library
View(mtcars)
?mtcars

mtcars[1,2]
mtcars["Mazda RX4", "cyl"]
mtcars[[9]]
mtcars[["am"]] #vzima kolonata s ime am, sushto i dolnoto
mtcars$am

##functions for home working
?attach #attach(df)
?read.table
?read.csv

##Get help
?c
help(c)
#c - Combine Values into a vector or list
#   The output type is determined from the highest type of the 
#   NULL < raw < logical < integer < double < complex < character

##Example
phone.calls1 = c(10,4,1,13,7,14,8)
phone.calls2 = c(8,2,4,15,3,7,15) 

phone.calls2[1] = 9
phone.calls2
phone.calls2[4]
phone.calls2[-4]
#slicing
phone.calls2[c(1,2,3,4,5)]
phone.calls2[1:5]
phone.calls2[seq(1,5,by = 1)]

#funcs
sum(phone.calls2)
sum(phone.calls2 > 5)