##Correlation tests of local instability, island size and degree of NNI graph

##number of areas vs island size
areas <- c(4, 6, 6, 8, 9)
islandSize <- c(18, 72, 90, 216, 486)
areaBySize <- as.data.frame(cbind(areas,islandSize))
cor.test(areaBySize$areas, areaBySize$islandSize, method = "pearson")
#r=0.9053, pval=0.0345

##number of possible topologies vs island size
topol <- c(3^4, 3^6, 3^6, 3^8, 3^9)
islandSize <- c(18, 72, 90, 216, 486)
topolBySize <- as.data.frame(cbind(topol,islandSize))
cor.test(topolBySize$topol, topolBySize$islandSize, method = "pearson")
#r=0.9925, pval=0.0008

##number of areas of instability vs degree
areas <- c(4, 6, 6, 8, 9)
degree <- c(4.33,6.33,6.33,7.67,9.00)
areaByDegree <- as.data.frame(cbind(areas,degree))
cor.test(areaByDegree$areas, areaByDegree$degree, method = "pearson")
#r=0.9936, pval=0.000615

##island size vs degree
islandSize <- c(18, 72, 90, 216, 486)
degree <- c(4.33,6.33,6.33,7.67,9.00)
islandByDegree <- as.data.frame(cbind(islandSize,degree))
cor.test(islandByDegree$islandSize, islandByDegree$degree, method = "pearson")
#r=0.9158, pval=0.02895
