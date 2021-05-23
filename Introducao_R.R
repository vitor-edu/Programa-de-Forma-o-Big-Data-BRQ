# A linguagem de programação R
# Tipos de Dados
# Objetos de dados



# imprimindo uma variável e seu tipo. 

v <- TRUE # tipo lógico.
print(v); print(class(v)); print("----------------------")

v1 <- 23.4 # tipo float.
print(v1); print(class(v1)); print("----------------------")

v2 <- 10L # tipo inteiro.
print(v2); print(class(v2)); print("----------------------")

v3 <- 3 + 2i  # tipo complexo.
print(v3); print(class(v3)); print("----------------------")

v4 <- "sucesso" # tipo caractere.
print(v4); print(class(v4)); print("----------------------")

v5 <- charToRaw("ola hello word") # tipo raw.
print(v5); print(class(v5)); print("----------------------")

#---------------------------------------------------------------------------

# Objetos de dados

#vectores(dados mesmo tipo), criando um vetores e atribuindo a uma variável, impriminto a variável e o tipo de dados.

x <- c("azul", "amarelo", "cinza", "preto", "branco") # vetor de caracter
print(x)
print(class(x))

x1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9) # vetor de números
print(x1)
print(class(x1))

x <- c(charToRaw("vitor"), 334.4, "azul", 34L, 23.8, 2, "branco") # vetor tipos diferentes.
print(x)
print(class(x))

#Lista(dados tipo diferente)

L <- list(c(3,5,5,6), 32.4, sin) # criando uma lista de dados diferentes, a função sin sem parametro retorna sua posiçao na memória.
print(L)
print(class(L))

print(L[1]) # imprimindo o primeiro item da lista. 
print(L[3]) # imprimindo o terceiro item da lista. 

# Matrizes 

# Criando matrix com 2 linhas e 3 colunas. 
m1 <- matrix(c('vitor','maria','eugenia','joana','lurdes','marina'), nrow=2, ncol=3, byrow=TRUE)
m1

# Criando matrix com 3 linhas e duas colunas. 
m2 <- matrix(c('vitor','maria','eugenia','joana','lurdes','marina'), nrow=3, ncol=2, byrow=TRUE)
m2

# Criando matrix preenchendo dados por coluna. 
m3 <- matrix(c('vitor','maria','eugenia','joana','lurdes','marina'), nrow=3, ncol=2, byrow=FALSE)
m3

# Array (Objetos de tamanho de dmienssões qualquer).

a <- array(c("vitor", "eduardo"),dim=c(5,5,3))
print(a)
print(class(a))

b <- array(c("vitor", "eduardo"),dim=c(2,2,2))
print(b)
print(class(b))

#Factor

# Criando um vector de cores repetidas.

cores <- c('verde','verde','amarelo','azul','azul','azul','azul','verde','cinza')
f <- factor(cores) #Criando um factor
print(f) 
print(nlevels(f))
print(class(f))

# DataFrame


DATAFRAME <- data.frame( # criando um data frame com 4 vetores.
  genero = c("MASCULINO","FEMININO","MASCULINO","FEMININO","MASCULINO","FEMININO"),  
  altura = c(152.5,192.8,172.6,189.7,178.8,189.9), 
  peso = c(43,56,30,24,34,94), 
  origem = c("","","","","","") 
)
print(DATAFRAME)






















#------------------------------------------------------------











