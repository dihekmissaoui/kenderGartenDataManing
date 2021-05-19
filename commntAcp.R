my_commt  = read.table("commt.csv", header = TRUE , sep = ",")
View(my_commt)
summary(my_commt)
pairs(my_commt[c(1,4)])

autos <- my_commt

autos.actifs <- autos[,2,4]
autos.illus <- autos[,1,3,5:6]


x <- my_commt[c(1,4)]


plot(x, type="o", col="blue")
title(main="comment", col.main="red", font.main=4)
    

