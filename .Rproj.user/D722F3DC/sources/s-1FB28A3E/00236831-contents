ata <- satisfaction_parent
data$satisfactionF <- factor(data$satisfaction)

set.seed(12)
pd <- sample(2,nrow(data),replace = TRUE , prob = c(0.2,0.8))
train <- data[pd==1,]
validate <- data[pd==2,]
library(party)
tree <- ctree(satisfactionF~age+salaire,data=train)
plot(tree)
tree