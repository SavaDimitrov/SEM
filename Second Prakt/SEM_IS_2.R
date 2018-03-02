library(UsingR)
#pokemons
pokemons = read.csv("pokemon_alopez247.csv")
View(pokemons)

#pokemons[5,3] #vzimane na danni

summary(pokemons) #tablica s kolichestveni i kachestveni danni za pokemonite

names(pokemons)
#####################Kachestveni promenlivi######################
pokemons$Type_1 #vrushta cqlata tablica s vsichki pokemoni
head(pokemons$Type_1) # vrushta purvite 6
head(pokemons$Type_1, 5) #s 5 ukazvame kolko da izvede
tail(pokemons$Type_1) #poslednite 6
tail(pokemons$Type_1, 5) #poslednite 5
table(pokemons$Type_1) #sushtoto kato summary, no go izkarva kato tablica
#summary(pokemons$Type_1)
#podrejda po azbuchen red
barplot(table(pokemons$Type_1),
        col=c("green", "black", "darkgreen"))
####za domashno - vzimame vseki edin ot pokemonite i mu vijdame cveta, i go risuvame

#pai diagrama
pie(table(pokemons$Type_1))

#veroqtnosta da se padne pokemon ot tip Bug
table(pokemons$Type_1) / length(pokemons$Type_1)

##################Kolichestveni promenlivi#################
summary(pokemons$Total)
head(pokemons$Total)
hist(pokemons$Total) #histograma
rug(jitter(pokemons$Total)) #barkod
#!! stem(pokemons$Total) #vij lista ot praktikuma
boxplot(pokemons$Total, horizontal = TRUE)
#summary(pokemons$Height_m)
#head(pokemons$Height_m)
###violinplot(pokemons$Total) #kato pochne statistikata shte ni ebut maikata ;(

##nqkvi raoti
summary(pokemons)
summary(pokemons$Height_m)
head(pokemons$Height_m)
boxplot(pokemons$Weight_kg, horizontal = TRUE)
