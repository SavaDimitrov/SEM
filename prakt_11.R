#proporcii
prop.test(42,100,p=0.5,conf.level = 1-0.03, alternative = 'less')

#sredno
library(UsingR)
rat
summary(rat)
boxplot(rat)

#proverka za normalno razpredelenie!!
library(StatDA)
qqplot.das(rat, "norm", col = "green")
shapiro.test(rat)
#nqmame dadena dispersiq => t.test
t.test(rat, mu = 62, conf.level = 1 - 0.03, alternative = "greater")

#dve izvadki
#proporcii
prop.test(c(42, 62), c(100, 100),conf.level = 1-0.03, alternative = 'less')

#sredno
corn
t.test(corn$New, corn$Standard, conf.level = 1 - 0.03, alternative = "two.sided", paired = TRUE)
#mediana
#wilcox.test(corn$New, corn$Standard)







#x^2 distribution
## Chi Square Tests
# test of categorical data

## Chi Square Distribution
# Distribution of the sum of squared normal random variables.
# Zi ~ N(0,1) i.i.d.
# X^2 = Z1^2 + Z2^2 + ... + Zn^2
# X^2 ~ X^2(n) #n - degrees of freedom

# The shape of the distribution depends upon the degrees of freedom
library(UsingR)
x = rchisq(100, 5)
simple.eda(x)
simple.eda(rchisq(100, 1))
simple.eda(rchisq(100, 2))
simple.eda(rchisq(100, 3))
simple.eda(rchisq(100, 4))
simple.eda(rchisq(100, 6))
simple.eda(rchisq(100, 7))
simple.eda(rchisq(100, 8))
simple.eda(rchisq(100, 9))
y = rchisq(100, 50)
simple.eda(y)
shapiro.test(y)

simple.eda(rchisq(100, 100))
shapiro.test(rchisq(100, 100))


simple.eda(rchisq(100, 1000))
shapiro.test(rchisq(100, 1000))


# For a small number of degrees of freedom it is very skewed.
# As the number gets large the distribution begins to  look normal.

## Chi Squared Goodness of Fit Tests
# http://stattrek.com/chi-square-test/goodness-of-fit.aspx?Tutorial=AP
# Checks to see if the data came from some specified population.
# Test if categorical data corresponds to a model 
# where the data is chosen from the categories according to some
# specified set of probabilities.

## Example: Dice rolling
# Is the die fair?
# Toss a die 150 times
150/6
# We expect each face to have about 25 appearances.
# We look at how far off the data is from the expected.
# fi - frequency of category i
# ei - expected count of category i
# X^2 =sum((fi - ei)^2/ei)
# X^2 is large if there is a big discrepancy between the actual frequencies and the expected frequencies
# For X^2 test
# - data must be independent
# - expected counts isn,t smaller than 1
# - expected counts are bigger than 5
# X^2 ~ X^2(n - 1)
# H0: each category i has probability pi = 1/6
# H1: at least one category doesn't have this specified probability.
X.freq = c(22, 21, 22, 27, 22, 36)
probs = c(1, 1, 1, 1, 1, 1)/6
chisq.test(X.freq, p = probs)
# p-value = 0.2423 > alpha = 0.05 => accept H0 (hypothesis that the die is fair)

##########################################################################
#GENERIRAME RANDOM ZARCHE I PRAVIM PROVERKA DALI E PRAVILNO
prob = rep(1/6,6)
freq = sample(1:6, 100, prob, replace = TRUE)
chisq.test(table(freq), p = prob)
##########################################################################

Y = sample(1:6, 150, replace = TRUE)
Y.freq = table(Y);Y.freq
probs = c(1, 1, 1, 1, 1, 1)/6
chisq.test(Y.freq, p = probs)
# p-value = 0.48 > alpha = 0.05 => accept H0 (hypothesis that the die is fair)
Z = sample(1:6, 150, replace = TRUE, prob = c(0.5, 0.5, 1, 1, 1, 2)/6)
Z.freq = table(Z); Z.freq
probs = c(1, 1, 1, 1, 1, 1)/6
chisq.test(Z.freq, p = probs)
# p-value = 0.00000003627 < alpha = 0.05 => reject H0 (hypothesis that the die is fair)

## Example: Letter distribution
# 5 most popular letters in the English language are:
#    freq.
# E - 29
# T - 21
# N - 17
# R - 17
# O - 16
# On average 29 times out of 100 it is an E and not the other 4.
# A text is analyzed and the number of E,T,N,R and O's are counted.
#    freq.
# E - 100
# T - 110
# N - 80
# R - 55
# O - 14
# Is this text from the English language?
# H0: pE = 0.29, pT = 0.21, pN = 0.17, pR = 0.17, pO = 0.16
# H1: at least one category doesn't have this specified probability.
#! chi-squared test require independence of each letter, so this is not quite appropriate, but lets suppose the letters are independent.
text.freq = c(100, 110, 80, 55, 14)
probs = c(29, 21, 17, 17, 16)/100
chisq.test(text.freq, p = probs)
# p-value = 0.00000000002685 < alpha = 0.05 => reject H0 (hypothesis that this text is from the English language)

# Take some part from Verzani and calculate the number of appearances of E, T, N, R, O and the number of characters
# You can use this site http://www.countcalculate.com/everyday-life/count-characters-and-words-in-text
# characters - 302
# E - 38
# T - 42
# N - 15
# R - 20
# O - 20
text.Verzani.freq = c(38, 42, 15, 20, 20)/302
probs = c(29, 21, 17, 17, 16)/100
chisq.test(text.Verzani.freq, p = probs)
# p-value = 0.99 > alpha = 0.05 => accept H0 (hypothesis that this text is from the English language)

## Example: 
# Company printed baseball cards.
# It claimed that 30% of its cards were rookies;
# 60% were veterans but not All-Stars;
# and 10% were veteran All-Stars.
# Random sample is taken of 100 cards: 
# - 50 rookies
# - 45 veterans
# - 5 All-Stars.
# See whether our sample distribution differed significantly from
# the distribution claimed by the company?
# Use a 0.05 level of significance.
cards.freq = c(50, 45, 5)/100
probs = c(30, 60, 10)/100
chisq.test(cards.freq, p = probs)
# p-value = 0.9067 > alpha = 0.05 => accept H0

## Chi Squared tests of independence
# http://stattrek.com/chi-square-test/independence.aspx?Tutorial=AP
# If two rows are "independent"
# H0: rows are independent
# H1: rows are not independent

# Example: car crush
#                Injury Level
#            None  minimal  minor major
# yes belt  12813      647    359    42
# no belt   65963     4000   2642   303
# Are the two rows independent?
# Does the seat belt make a difference?
yesbelt = c(12813, 647, 359, 42)
nobelt = c(65963, 4000, 2642, 303)
chisq.test(data.frame(yesbelt, nobelt))
# p-value = 0.000000000000861 < alpha = 0.05 => reject H0(rows are independent)

## Example
# Make the example from th link

## Chi Squared tests for homogeneity
# http://stattrek.com/chi-square-test/homogeneity.aspx?Tutorial=AP
# Tests to see if the  rows come from the same distribution.
# H0: Both sets of data come from the same distribution
# H1: don't come from the same distribuion

# Example: Roll a die
# roll fair die 200 times
# roll biased die 100 times
die.fair = sample(1:6, 200, prob = c(1, 1, 1, 1, 1, 1)/6, replace = TRUE)
die.bias = sample(1:6, 100, prob = c(0.5, 0.5, 1, 1, 1, 2)/6, replace=TRUE)
fair.freq = table(die.fair)#;die.fair.freq
bias.freq = table(die.bias)#; die.bias.freq
freq = rbind(fair.freq, bias.freq)
freq
# we assume that the two rows of numbers are from the same distribution
# Marginal total is (26 + 4)/300 = 30/300 = 1/10.
# So we expect      200(1/10) = 20.
# And we had 26.
# X^2 = sum((fi - ei)^2/ei)
# df = (number of rows - 1)(number of columns - 1)
# df = (2 - 1)(6 - 1) = 5
chisq.test(freq)
# p-value = 0.0008005 < alpha = 0.05 => reject H0 (Both sets of data come from the same distribuion)

## Example: make the example from the link

## Example:
# take two texts and check if they come from the same language

## Problems:
## 12.1
nonblock = c(18, 15, 5, 8, 4)
block = c(10, 5, 7, 18, 10)
chisq.test(data.frame(nonblock, block))
## 12.2
vec1 = c(67,10,5)
vec2 = c(42,6,5)
vec3 = c(75, 8, 4)
vec4 = c(56, 4, 6)
vec5 = c(57, 15, 1)
chisq.test(data.frame(vec1, vec2, vec3, vec4, vec5))
## 12.3
#h0: p1 = 5/12, p2 = 3/12, p3 = 4/12
#h1: !=
#p-val = o.13 > alpha = 0.05 => accept h0

## 12.4