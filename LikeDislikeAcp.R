my_data = read.table("comment_post (5).csv", header = TRUE , sep = ",")
View(my_data)
summary(my_data)
pairs(my_data[,5:6])

autos <- my_data
autos.actifs <- autos[,5:6]
autos.illus <- autos[,1:4]

res.pca = PCA(my_data[,5:6], scale.unit=TRUE, ncp=2, graph=T)
print(res.pca)
fviz_pca_var(res.pca, col.var = "cos2",
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
             repel = TRUE # Évite le chevauchement de texte
)
