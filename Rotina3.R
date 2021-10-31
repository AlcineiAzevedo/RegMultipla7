remove(list=ls())
setwd("D:/Backup Pendrive/UFMG/Disciplinas/Tópicos Avançados em Estatística experimental/2021/Reg 1")
D=read.table("Dados1.txt",h=T)

m1=lm(Area~Comp+Larg+Comp:Larg,data=D)
anova(m1)
summary(m1)
AIC(m1)
BIC(m1)

m2=lm(Area~Comp+Comp:Larg,data=D)
anova(m2)
summary(m2)
AIC(m2)
BIC(m2)


library(ExpAnalysis3d)
?ExpAnalysis3d

ajuste1=AjustarRegressao(D,design = 1)
ajuste1


D2=read.table("Dados3.txt",h=T)
ajuste2=AjustarRegressao(D2,design = 3)
ajuste2

plot3D(ajuste2,modelo = 4)
