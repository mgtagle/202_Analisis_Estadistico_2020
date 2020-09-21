# Clase 4: 21 deseptiembre de 2020
#  Estadísticas básicas


library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)
names(conjunto)
summary(conjunto)

length(conjunto$Diametro)


# medidas de tendencia central --------------------------------------------


sum(conjunto$Altura)/length(conjunto$Altura)

mean(conjunto$Altura)

median(conjunto$Altura)


range(conjunto$Altura)

fivenum(conjunto$Altura)

boxplot(conjunto$Altura, col = "orange")
boxplot(conjunto$Diametro ~ conjunto$Especie, col= "orange")

stem(conjunto$Diametro)

hist(conjunto$Diametro, 
     ylim=c(0,14))


# Medias de dispersión ----------------------------------------------------

var(conjunto$Diametro)
sqrt(var(conjunto$Diametro))
sd.diam <- sd(conjunto$Diametro)


quantile(conjunto$Diametro, 0.5)
quantile(conjunto$Diametro, 0.75)
quantile(conjunto$Diametro, 0.25)

# Coeficiente de variación

sd.diam/mean(conjunto$Diametro)*100
