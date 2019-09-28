#THIAGO CAMARGO PARAZZI
#RA: 17287251

library(tidyverse)
library(dplyr)
library(ggplot2)
library(dslabs)

#abaixo inserir nos parenteses o caminho para wine.data
wine = read.csv('D:/dados/downloads/wine.data', header = FALSE)

data = wine

#omite valores sem preenchimento
wine = na.omit(wine)

for (c in 1:14){
  #calculando valores médios
  print(mean(data[1:178, c]))
  print("###################")
  #histograma de cada uma das colunas
  print(hist(data[1:178, c]))
  #boxplot dos valores de cada uma das colunas
  boxplot(data[1:178, c]~wine$V1)
}
#plot de valores de duas em duas colunas - geralzão
plot(wine)

#ggplot
ggplot(data = wine) +
  ggtitle("Cinzas por Intensidade de Cor entre Cultivos de Vinho") +
  geom_point(aes(x=wine$V4,y=wine$V11, col=wine$V1), size=3) 
  #geom_text(aes("cinzas", "intensidade de cor"))

plot(wine, col = wine$V1)


