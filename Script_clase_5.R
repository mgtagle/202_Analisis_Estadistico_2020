# Prueba de contraste de medias
# Una muestra (una media de datos observados vs una media teorética)


data(iris)
head(iris)
str(iris)



# H0 = la media de la longitud de los sepalos producidos en el vivero "Carolina" es igual a la media toerética 6 mm
# establecido por el club de jardinería González 

# H1 = La media de la longitud de los sepales producidos en el vivero C es diferente a la media teóretica de 6mm ...

sepal <- iris[, 1]

range(sepal)
mean(sepal)

# media teorética 6.00 mm

t.test(sepal, mu=6)


t.test(iris$Sepal.Width, mu=3.1)

var(iris$Sepal.Width)
shapiro.test(iris$Sepal.Width)
hist(iris$Sepal.Width)
