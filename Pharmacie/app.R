install.packages("shiny")
library(shiny)
packageVersion("shiny")

######### importation des donnés ##########

library(readr)
vente <- read.csv("FaitVentes.csv")
produit<- read.csv("DimProduit.csv")
pharmacie<-read.csv("DimPharmacie.csv")
date <- read.csv("DimDate.csv")

library(dplyr)
data<- select(vente ; date ; produit;pharmacie)

######nettoyade des données #########

### ..........la base vente .................

summary(vente)
sum(is.na(vente))
sum(duplicated(vente))

#######.........phramacie .................

summary(pharmacie)
sum(is.na(pharmacie))
sum(duplicated(pharmacie))

#### ......produit .................

summary(produit)
sum(is.na(produit))
sum(duplicated(produit))

######## ..........date......

sum(is.na(date))
sum(duplicated(date))

############### ..........conception de mon application ..........

########........interface utilisateur...........................

uitilisateur<- fluidPage()



####............interface serveur...................................


