#Task 2.1
miles = c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
x = diff(miles)
max(x)
mean(x)
min(x)

#Task 2.2
commute = c(17,16,20,24,22,15,21,15,17,22)
max(commute)
mean(commute)
min(commute)

commute[4] = 18
mean(commute)

sum(commute >= 20)
sum1 = sum(commute < 17)
sum2 = length(commute)

percent = (sum1/sum2)*100
print(percent)

#Task 2.3
#home practice

#Task 2.4
car.price = c(9000,9500,9400,9400,10000,9500,10300,10200)
mean(car.price)
mean(car.price) > 9500
min(car.price)
max(car.price)

#Task 2.5
#..
sum(x[x>5]) #-vrushta sumata na vsicki elementi po golemi ot 5
sum(x>5 | x<3) #- 3
y[-3] #- vsichki bez 3ta poziciq
y[x] #- elementite na x stavat pozicii
y[y>=7] #- vrushta vs elementi >=7

#Task 1
vec = c(8,3,8,7,15,9,12,4,9,10)
names = c("r1","r2","r3","r4","r5")
A = matrix(vec,
           nrow = 5,
           ncol = 2,
           dimnames = list(names))
#add new col - home
sort(A[,1])

#Task 2

