# Package required to call 'factanal' function
library(stats)
# Package required to call 'freq' function
library(summarytools)
# Package required to call 'cortest.bartlett' function
library(psych)
# Package required to call 'hetcor' function
library(polycor)
# Package required to call 'ggcorrplot' function
library(ggcorrplot)
# Package required to call 'corrplot' function
library(corrplot)
# Package required to call 'rplot' function
library(corrr)
#package required to read the data sets
library(foreign)


#Primero de todo, comenzamos cargando las distintas bases de datos con las que trabajaremos


datos_EBAP<- read.spss("Burnout_EBAP_20_22_IJERPH.sav", to.data.frame=TRUE)

datos_gestoras<- read.spss("Burnout_gestoras_15_22_JPM.sav", to.data.frame=TRUE)

datos_dependencia<- read.spss("Dependencia_funcional_29_24_JCDD.sav", to.data.frame=TRUE)

#Empezaremos analizando los datos de la EBAP
colnames(datos_EBAP)
#Veamos la tabla de frecuencias del estado civil y de las edades, por ejemplo
freq(datos_EBAP$Estado_Civil)

freq(datos_EBAP$Edad)

#probamos a hacer la matrix de correlacion, pero no se puede porque no es numerico
correlation_matrix<-cor(datos_EBAP)

