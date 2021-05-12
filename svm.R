base = read.csv('credit-data.csv')
base$clientid = NULL
base
summary(base) # Retorna os dados estatisticos básicos.

#valores média
media = mean(base$age[base$age>0],na.rm = TRUE)


# Substituir valores negaativo pela média
base$age = ifelse(base$age<0,media,base$age)

# Substituir valores n/a pela media
base$age = ifelse(is.na(base$age),media,base$age)

# escalonamento  
base[,1:3] = scale(base[,1:3])


library(caTools)


# Separando base em treino e teste. 
set.seed(1)
divisao = sample.split(base$default,SplitRatio = 0.75)
divisao

base_treino = subset(base,divisao == TRUE)
base_teste = subset(base,divisao == FALSE)

install.packages('e1071') 
library(e1071)

classif_svm = svm(formula = default~., data = base_treino,type = 'C-classification', kernel = 'linear', cost = 1)
print(classif_svm)

prev_svm = predict(classif_svm, newdata = base_teste[-4])
print(prev_svm)

prev_svm = predict

matriz_confusao = table(base_teste[, 4], prev_svm)
print('matriz_confusao')

library(caret)
confusionMatrix(matriz_confusao)



