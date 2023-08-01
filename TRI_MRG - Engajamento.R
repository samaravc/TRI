------------------------------------------------------------------------------------------------------
#ENGAJAMENTO
------------------------------------------------------------------------------------------------------
#use o comando 'setwd()' para carregar a planilha no R em um dataframe
setwd("C:/Users/Samara Viana Costa/OneDrive/Área de Trabalho/TRI")

dadossuporg <- read.csv("Engajamento_2022.csv",  header = T, sep = ";")


# Modelo de 2 parametro
mod2SO<-mirt(dadossuporg, 1, itemtype = 'gpcm')


#Coeficientes do modelo bidimensional
coef(mod2SO, simplify=TRUE, IRTpars=TRUE)

#"a" parametro de descriminação dos itens e "b" dificuldade dos itens. 

#Grafico do modelo 2
plot(mod2SO)
plot(mod2SO, type='info')

summary(mod2SO)

#CCI
plot(mod2SO, MI=700)
plot(mod2SO, type='trace')
plot(mod2SO, type='infotrace')

