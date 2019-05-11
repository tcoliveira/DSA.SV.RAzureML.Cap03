?sample
args(sample)#Argumentos de uma funcao
args(mean)
args(sd)
#Funções bult-in
abs(-43)
sum(c(1:5))
round(c(1.1:5.8))

vec1<-c(1.5, 2.5, 8.4, 4.5, 3.2)
vec2<-rev(vec1)
vec2
plot(rnorm(10))

#Criando funções

myfunc<-function(x) {x+x}
myfunc(20)

jogando_dados <- function(){
  num<-sample(1:6, size=1)#Local
  num
}
jogando_dados
jogando_dados()

#Funções sem numero definido de argumentos
vec1<-(10:13)
vec2<-c('a','b','c','d')
vec3 <- c(6.5, 9.2, 11.9, 5.1)

myfunc3 <- function(...){
  df = data.frame(cbind(...))
  print(df)
}

myfunc3(vec1)
myfunc3(vec1,vec2)
myfunc3(vec1,vec3)
