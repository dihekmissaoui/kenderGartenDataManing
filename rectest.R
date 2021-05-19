#Data
my = read.table("rec.csv", header = TRUE , sep = ",")
View(my)
str(my)

#pack
install.packages("ggplot2")
install.packages("viridis")
install.packages("caret")
install.packages("e1071")


library("viridis")  
library(ggplot2) 

library("colorspace")
library("caret")


qplot(sujet,categorie,data=my,color = sujet)
#support vector Machine
library("e1071")
mymodel <- svm(sujet~., data=my,kernel="linear")
summary(mymodel)
plot(mymodel, data=my,sujet~categorie, slice= list(activite=3,prix=4))

#1tuning
set.seed(123)
tmodel<-tune(svm, sujet~., data=my, ranges = list(epsilon= seq(0,1,0.1),cost=2^(2:9))) 
              
plot(tmodel)
summary(tmodel)
#2best Model
mymodel <- tmodel$best.model
summary(mymodel)
#plot(mymodel, data=my,sujet~id, slice= list(activite=3,prix=4))


qplot(id,sujet,data=my,color = sujet)

#confusion matrix error
pred <- predict(mymodel,my)
tab <- table(Predicted = pred , Actual = my$sujet)

tab 
1-sum(diag(tab))/sum(tab) 
