##Correlation tests of local instability and island size

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