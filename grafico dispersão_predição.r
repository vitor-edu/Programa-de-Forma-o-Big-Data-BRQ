#  Carregar os dados nos vetores

x <- c(7,8,22,34,34,35,40,45,56,67,77,76,76,98,102,103)
y <- c(60.3,63.3,67.7,77.7,80.8,82.3,85.0,88.0,90.8,102.0,102.8,104.7,110.2,111.2,112.3,113.3)
print(x)
print(class(x))
print(class(y))

# criar o modelo e imprimir o coeficiente
# funcão 'lm'  criação do modelo de regressão linear

modelo <- lm(y~x)
print(modelo)

# funcao predict (predicao valores) 30%

a <- data.frame(x = 30)
result <- predict(modelo,a)
cat("30% de aditivo gera um indice de octanagem de ", result, '\n')

# funcao predict (predicao valores) 130%

a_2 <- data.frame(x = 130)
result <- predict(modelo,a_2)
cat("130% de aditivo gera um indice de octanagem de ", result, '\n')

png (file = "indice de octanagem.png") 

# função plot
# desenhando o gráfico de dispersã0

plot(# dados das cordenadas
     x,
     y,
 
  # cor dos pontos
     col = "red", 

  # titulo principal
     main = "indice de octanagem", 

  # add uma linha no grafico
     abline(modelo), 

  # expessura dos pontos / formato dos pontos
     cex = 1.5, 
     pch = 16, 

  # titulos do eixo x, y
     xlab = "% de aditivo", 
     ylab = "indice de octanagem")

# salvando e fechando os arquivos
dev.off()
  

  

