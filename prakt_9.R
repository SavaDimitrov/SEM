library(UsingR)
rat
?rat
#normalno razpredelenie - ako nabliudeniqta ni sa okolo sredata

#ako tochkite se namirat na diagonala imame normalno razpredelenie
qqnorm(rat)
qqline(rat)

#histograma - po lesno se vijda dali dannite sa normalno razpredeleni
hist(rat)

install.packages("StatDA")
library(StatDA)

qqplot.das(rat, "norm")

#test koito shte izpolzvame ot tuk natatuk
#shapiro.test(rat)

###simple z.test - kogato populacionnata dispersiq e dadena(t.e. sigma^2)

#(priemame che)dannite sa normalno razpredeleni => t.test
#v dadeniq interval shte se namirat 75% ot dannite
t.test(rat)

malpract
?malpract
qqplot.das(malpract)
#?qqplot.das

#za sredno pravim t.test i simple.z.test(z - iska UsingR)
#za mediana pravim wilcox test
#pravim za mediana zashtoto ne se vliq tolkova ot outline-rite,
#dannite sa po razprusnati i imat po tejki opashki
wilcox.test(malpract, conf.level = 0.90, conf.int =  TRUE)

###########################HIPOTEZI#################################
library(UsingR)
library(StatDA)


## Hypothesis Testing (Проверка на хипотези)

# Related to the problem of finding confidence intervals
# Confidence Interval:
# Use the data to tell you where the unknown parameters should lie.
# Hypothesis testing:
# You make a hypothesis about the value of the unknown parameter
# and then calculate how likely it is that you observed the data.


## Testing a population parameter
## Example: Simple survey
# You ask 100 people and 42 say "yes" to your question.
# Does this support the hypothesis that the true proportion is 50%?
# Two-sided hypothesis
# null hypothesis
# H0: p = 0.5
# alternative hypothesis
# H1: p != 0.5
prop.test(42, 100, p = 0.5)
# p-value 0.1336
# How likely we are to see this data
# The probability of <42 or 58> answer "yes" 
# when the chance a person will answer "yes" is fifty-fifty.
# p-value 0.1336 > alpla = 0.05
# Извадката не е в критичната област за нулевата хипотеза и
# нямаме основание да отхвърлим нулевата хипотеза

## Example: Survey
# We ask 1000 people and 420 say "yes".
# Two-sided hypothesis
# null hypothesis
# H0: p = 0.5
# alternative hypothesis
# H1: p != 0.5
prop.test(420, 1000, p = 0.5)
# p-value = 0.0000004956 < alpha = 0.05
# Извадката е в критичната област за нулевата хипотеза и
# отхвърляме нулевата хипотеза


## Testing a mean
## Example: 
# Car manufacturer claims a model gets 25 mpg.
# A consumer group asks 10 owners of this model to calculate their mpg 
# and the mean value was 22 with a standard deviation of 1.5.
# Is the manufacturer's claim supported?
# One-sided hypothesis
# null hypothesis
# H0: mu = 25
# alternative hypothesis
# H1: mu < 25
# The data is already summarized
xbar = 22
s = 1.5
n = 10
t = (xbar - 25) / (s/sqrt(n));t
pt(t, df = n-1)

#####sushtoto za rat##############################
rat
xbar = mean(rat)
xbar
s = sd(rat) #sigma - standartno otklonenie
n = length(rat)
t = (xbar - 100) / (s/sqrt(n))
t
pt(t, df = n - 1)
#################################################
# p-value = 0.000068 < alpha = 0.05
# Извадката е в критичната област за нулевата хипотеза и
# отхвърляме нулевата хипотеза
# The manufacturer's claim is suspicious


## Tests for the median
## Example: cell-phone usage
x = c(12.8, 3.5, 2.9, 9.4, 8.7, 0.7, 0.2, 2.8, 1.9, 2.8, 3.1, 15.8)
stem(x)
# Skewed with a possibly heavy tail
# One-sided hypothesis
# null hypothesis
# H0: median = 5
# alternative hypothesis
# H1: median > 5
wilcox.test(x, mu = 5, alt = "greater")
# p-value = 0.5156 > alpha = 0.05
# Извадката не е в критичната област за нулевата хипотеза и
# нямаме основание да отхвърлим нулевата хипотеза


## Rank tests
# p-value for a two-sided test for a specified median
x = c(12.8, 3.5, 2.9, 9.4, 8.7, 0.7, 0.2, 2.8, 1.9, 2.8, 3.1, 15.8)
simple.median.test(x, median = 5)
# p-value = 0.3876953 > alpha = 0.05 # accept H0
simple.median.test(x, median = 10)
# p-value = 0.0385742 < alpha = 0.05 # reject H0