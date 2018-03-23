pokemons = read.csv("pokemon_alopez247.csv")
View(pokemons)
attach(pokemons)
names(pokemons)

# kolichestvena s kachestvena promenliva moje da se sravnqvat s boxplot,
# kato primerno za vseki cvqt na kosata pravim otdelen boxplot s rustovete
# Primer:
# boxplot(pokemons$Height_m ~ pokemons$Color)

# kogato pravim razpredelenie e nai udachno da polzvame density

# skalirane - xi - x(dopulnenie) / sd(standartno otklonenie)

# zavisimosti:
# D - dispersiq, cov - kovariaciq #(VAR = D)
# -1 < cor = cov(x,y)/sqrt(VARxVARy)) < 1
# -1 - obratna zavisimost, 0 - nqma zavisimost, 1 - prava proporcionalnost
# WIKI - Correlation - podrobnosti
# Dx = Ex^2 - (Ex)^2 (2q centralen moment - 1q centralen moment)

library(UsingR)
homedata
View(homedata)

plot(homedata)
# trudno shte izpolzvame liniqta, tui kato ni trqbva x i y koordinati
#zatova polzvame vmesto line, abline
#?abline
#lm - pravi lineen model, ocenqva parametrite a,b (matrichno),
abline(lm(homedata$y2000~homedata$y1970))
summary(lm(homedata$y2000~homedata$y1970))
simple.lm(homedata$y1970, homedata$y2000)
lm.res = simple.lm(homedata$y1970, homedata$y2000)
#dvete dolu sa ekvivalentni
coef(lm.res)
lm.res$coefficients
#dvete dolu sa ekvivalentni
coef(lm.res)[1]
lm.res$coefficients[1]
#dvete dolu sa ekvivalentni
coef(lm.res)[2]
lm.res$coefficients[2]
# kak da namerim y, ako znaem x?
lm.res$coefficients[1] + lm.res$coefficients[2]*250000 #x = 250000; y=1210488
#########################################################
plot(florida)
#ot uchebnika - mnogomerni analizi y~x|z
plot(florida$BUSH, florida$BUCHANAN)
lm.res1 = simple.lm(florida$BUSH, florida$BUCHANAN)
lm.res1$coefficients[1] + lm.res1$coefficients[2]*150000
#cor=?=0,62
