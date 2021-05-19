install.packages("stats")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggfortify")

library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)
library(ggpubr)
library(factoextra)

reponse  = read.table("reponse_forum.csv", sep = ",")
View(reponse)

df <- reponse
head(df, 3)
# Calculer k-means avec k = 3
set.seed(123)
res.km <- kmeans(x , 3, nstart = 25)
# Clustering K-means montrant le groupe de chaque individu
res.km$cluster

fviz_cluster(res.km, data = x,
             palette = c("#2E9FDF", "#00AFBB", "#E7B800"), 
             geom = "point",
             ellipse.type = "convex", 
             ggtheme = theme_bw()
)
