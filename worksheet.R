
#Vector - 1D same datatype
vector1<-c(1,2,3)
v2<-c(1,2,'a')
v2[1]


typeof(v2)
length(v2)
str(v2)
attributes(v2)


#Matrix - 2D same datatype
m1<-matrix(1:10,2,5)
m1
m1<-matrix(1:10,2,5,byrow=TRUE,dimnames=list(c(NA,NA),c('R1','R2','R3','R4','R5')))
v1<-c(1,2,3)
v2<-c(4,5,6)
m2<-cbind(v1,v2)
typeof(m1)
class(m1)
dim(m1)
length(m1)
str(m1)
t(m1)

#LIst - 1D diff datatype
l1<-list(1,2,'a')
l1
l1[1]
l1[[1]]

l2<-list(c(1,2,3),matrix(1:10,2,5))
l2

typeof(l1)
class(l1)
attributes(l1)
length(l1)

#Array - 3D diff datatype
#1d array = vector and 2d array=matrix and 3d array=array
#List is a group of vectors and array is a list of lists
#List elements - a[[1]] 

a1<-array(c(v1,v2),dim=c(2,2,3))
a1
a1[1,1,]
a1[1,2,]
a1[1,2,1]

a2<-array(c(v1,v2),dim=c(2,2,2),
          dimnames=list(c('R1','R2'),c('C1','C2'),c('T1','T2')))
a2
a2[,C1,]
a2[[1]][2]
a2[[2]]

a3 = array(list(), 3)
a3

#Map
a3[[1]][["a"]] <- 1
a3
a3[[2]]<-2

#Below wont work because array is a list of lists and each list is group of vectors
#Basically, cant assign a group of values to 1 element in a vector
a3[[3]] <- 1:2
#Can make it work if you convert that vector to a list
a3[[3]]<-as.list(a3[[3]])
a3
a3[[3]] <- 1:2
typeof(a2)
class(a3)
dim(a3)
length(a3)
str(a3)

#Dataframe - as good as a multidimensional table
df<-data.frame(x1=c(1,2,3,4),x2=c(4,5,6,7),x3=c('a','b','c','d'))
df
df[1,2]
df$x1[2]

c<- c("a","c","b","f")
df<-data.frame(var2=c(1,2,3,4),var3=c)
str(df)
df$var1<-as.factor(df$var1)
str(df)
df$var2<-ordered(df$var2)


name<-c("A","B","C","D")
stan <- c("1","2","3","4")
sci <- c(100,40,50,60)
math <- c(100,40,50,60)
df <- data.frame(name=name,stan=stan,sci=sci,math=math)
str(df)


c<-colnames(df)
c
length(df)
for (i in 1:length(c))
{
  
  print(cat(i,c[i],df[,i]))
  
}

for (i in 1:length(c))
{
  if(is.numeric(df$c[i]))
  {
  print(cat(i,c[i],"is numeric"))
  }
  else
    {
      print(cat(i,c[i],"is NOT numeric"))
    }
  
}
df
df[,1]
c[1]
df$name
