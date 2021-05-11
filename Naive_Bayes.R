base = read.csv('census.csv') # lendo arquivo csv. 


#Excluindo a coluna x 

base$X = NULL
base$capital.gain = NULL
base$capital.loos = NULL

#Fazendo encode das variáveis

base$workclass = factor(base$workclass)
base$education = factor(base$education)
base$marital.status = factor(base$marital.status)
base$occupation = factor(base$occupation)
base$relationship = factor(base$relationship)
base$race = factor(base$race)
base$sex = factor(base$sex)
base$native.country = factor(base$native.country)
base$income = factor(base$income)


#Escalonamento

base[, 1] <- scale(base[,1])
base[, 3] <- scale(base[,3])
base[, 5] <- scale(base[,5])
base[, 11] <- scale(base[,11])


#Treinamento e teste

library(caTools)
set.seed(1) # setando a semente de valores aleatõrios
divisao = sample.split(base$income, SplitRatio = 0.66) # divisao treino e teste

base_treino = subset(base, divisao= TRUE)
base_teste = subset(base, divisao= FALSE)

#Contrucao do modelo

install.packages('e1071') # pacote com nave byes
library(e1071) # importando pacotes

#Modelo naive beyes utilizando o modelo ja processado

classificador_bayesiano = naiveBayes(x=base_treino[-1], y=base_treino$income)
print(classificador_bayesiano)



#Avaliacao do modelo 

prev_bayesiano = predict(classificador_bayesiano, newdata = base_teste[-1])
print(prev_bayesiano)

#Matriz confusão através redes bayesianas. 
matriz_confusao = table(base_teste[, 13], prev_bayesiano)

#install.packages('caret')
library(caret)
confusionMatrix(matriz_confusao)
