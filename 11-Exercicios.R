# Lista de Exercícios - Capítulo 3

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()

# Exercício 1 - Pesquise pela função que permite listar todos os arquivo no diretório de trabalho
list.files()

# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, um lógico e um de números
vec1 <- c("a","b","c")
vec2<-c(TRUE,FALSE,TRUE)
vec3<-c(1,2,3)
df<-data.frame(cbind.data.frame(vec1,vec2,vec3))
df
# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima o número e uma mensagem no console.

# Criando um Vetor
vec1 <- c(12, 3, 4, 19, 34)
vec1


for (i in 1:length(vec1)){
  if (vec1[i]>10){
      print(vec1[i])
}else
    print('Menor que 10')
}


# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console cada elemento da lista
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2
for (i in 1:length(lst2)){
  print(lst2[i])
}


# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as materizes
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2

# Multiplicação element-wise
mat1*mat2

# Multiplicação de matrizes

mat1 %*% mat2

# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação de cada um dos objetos
vec<-c(1:5)
names(vec)<-c('c1','c2','c3','c4','c5')
vec
mat<-matrix(c(1:50), nr=5, ncol = 5, byrow = T)
dimnames(mat)<-(list(c('ob1','ob2','ob3','ob4','ob5'), c('vr1','vr2',"vr3",'vr5')))
mat
lst2<-list(1:5)
lst2
df<data.frame(c(as.list(vec),mat,lst2))
#Incompleto, rever no video

# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória para 50 elementos da matriz
# Dica: use a função sample()
mat2 <- matrix(1:90, 10)
mat2
?sample
sample(mat2, 50, replace = FALSE)
mat2[sample(1:50, 10)] = NA
mat2
# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
?apply

linha<-apply(mat1,1,sum)
coluna<-apply(mat1,2,sum)
linha
coluna
# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente
a <- c(100, 10, 10000, 1000)
a
a[order(a)]
sort(a, decreasing = FALSE)
# # Exercício 10 - Imprima no console todos os elementos da matriz abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

for (i in 1:length(mat1)){
  if (mat1[i]>15){
    print(mat1[i])
  }
}
