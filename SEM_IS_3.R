library(UsingR)
#pokemons
pokemons = read.csv("pokemon_alopez247.csv")
View(pokemons)
attach(pokemons)
names(pokemons)

x=pokemons$Egg_Group_1
table(x) #chestotna tablica
table(x)/length(x) #P(x = "Amorphous") = 0.05
#charts
barplot(table(x))
barplot(table(x)/length(x))
pie(table(x))

#chestotni tablici
table(pokemons$isLegendary)
table(pokemons$hasGender)

#Veroqtnosti
table(pokemons$isLegendary)/length(pokemons$isLegendary)
table(pokemons$hasGender)/length(pokemons$hasGender)
#grafiki
barplot(table(pokemons$isLegendary))
barplot(table(pokemons$hasGender))

barplot(table(pokemons$isLegendary)/length(pokemons$isLegendary))
barplot(table(pokemons$hasGender)/length(pokemons$hasGender))

##

ftable(pokemons$isLegendary, pokemons$hasGender) #isLegend - red, hasGender - kolona
#table(pokemons$isLegendary, pokemons$hasGender)/length(x) #veroqtnosti
#edno i sushto sa!
#table(pokemons$isLegendary, pokemons$hasGender)/length(pokemons$isLegendary)

#P(hasGender = TRUE, isLegendary = TRUE)
prop.table(table(pokemons$isLegendary, pokemons$hasGender)) 
#P(hasGender = TRUE | isLegendary = TRUE)
prop.table(table(pokemons$isLegendary, pokemons$hasGender), 1)
#P(isLegendary = TRUE | hasGender = TRUE)
prop.table(table(pokemons$isLegendary, pokemons$hasGender), 2)

#Slaga gi edno nad drugo
barplot(table(pokemons$isLegendary, pokemons$hasGender))
#Slaga dvete neshta edno do drugo
barplot(table(pokemons$isLegendary, pokemons$hasGender), beside = TRUE)
#s cvqt
barplot(table(pokemons$isLegendary, pokemons$hasGender), 
        col = c("green", "orange", "black", "red"),
        beside = TRUE)

##
prop.table(table(pokemons$Type_1, pokemons$hasGender))
prop.table(table(pokemons$Type_1, pokemons$hasGender), 1)
prop.table(table(pokemons$Type_1, pokemons$hasGender), 2)

prop.table(table(pokemons$Type_1, pokemons$Color), 2)

##Kolichestveni
#hinch - krai medianata, kvartil - 25% e pod 1q i 75% nad 1q
summary(Total)
fivenum(Total)
#min, max - nai-malko, nai-golqmo
#mean, mediam - sredno, mediana
sd(Total)
var(Total)
#kvantili
quantile(Total, 0.25)
quantile(Total, 0.75)
quantile(Total, 1)
#diagrami
stem(Total)
y=hist(Total, probability = TRUE)
lines(density(Total, bw=100), col = "Red")

x$counts #kolko ima v intervalite

hist(Total)
x=hist(Total)
#info za komandata - ?hist
x$breaks #granicite na intervalite
x$xname #za imena otdolu

boxplot(Total, horizontal = TRUE)
#?boxplot

#polygon - 22 str, uchebnik





