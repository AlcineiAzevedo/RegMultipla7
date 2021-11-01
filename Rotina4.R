remove(list=ls())
setwd("D:/Backup Pendrive/UFMG/Disciplinas/Tópicos Avançados em Estatística experimental/2021/Reg 1")
D1=read.table("Dados1.txt",h=T)

# install.packages("ExpAnalysis3d")
library(ExpAnalysis3d)
?ExpAnalysis3d
Aj1=AjustarRegressao(D1,design = 1)
Aj1
plot2D(Aj1)
plot3D(Aj1,modelo = 1)


#############################
D2=read.table("Dados3.txt",h=T)
aj2=AjustarRegressao(D2,design = 3)
aj2
plot2D(aj2)
plot3D(aj2)


modelo=list(
  m1=Z~1+X+X:Y+Y,
  m2=Z~1+X+I(X^2)+Y+I(Y^2)
)

Aj3=AjustarRegressao(D2,design = 3,Modelos =modelo )
Aj3

plot2D(Aj3,modelo = 1)
plot2D(Aj3,modelo = 2)

mat=predict3D(Aj3,modelo=2)
write.table(mat,file = "Res.txt",col.names = F,row.names=F,sep="\t")
