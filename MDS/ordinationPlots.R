library(islandNeighbours)
library(vegan)

setwd("D:\\Documents\\HigherEducation\\PhD\\Pardo\\MajorityRuleIslands\\Ordination")

###load trees
trees <- read.tree("C:\\Users\\anad4\\Desktop\\KMTC_test\\PardoBayes.tre")

treesPars <- read.tree("C:\\Users\\anad4\\Desktop\\KMTC_test\\PardoMPT\\PardoTest.tre")



###matrices and plots
##Bayes
m <- tree.dist.matrix(trees)
# Use metaMDS function for 2D - plot
NMDS <- metaMDS(m, distance = m, k = 2)
# Plot your individuals
pdf('Bayesian Tree Distribution.pdf')
plot(NMDS$points[,1], NMDS$points[,2], main= 'Bayesian tree distribution',xlab='MDS1',ylab='MDS2')
dev.off()

##Pars
mPars <- tree.dist.matrix(treesPars)
# Use metaMDS function for 2D - plot
NMDSPars <- metaMDS(mPars, distance = mPars, k = 2)
# Plot your individuals
pdf('Most Parsimonious Tree Distribution.pdf')
plot(NMDSPars$points[,1], NMDSPars$points[,2], main= 'Most Parsimonious Tree Distribution',xlab='MDS1',ylab='MDS2')
dev.off()


##paper plot

# island 1 -> blue3
# island 2 -> orangered
# island 3 -> darkgreen
# island 4 -> deepskyblue4
# island 5 -> chocolate


pdf("PardoOrdinationPlots.pdf")
par(mfrow=c(1,2))
plot(NMDSPars$points[,1], NMDSPars$points[,2], cex.axis = 0.65, cex.lab = 0.8,
	col = c("darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen", "darkgreen",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "orangered", "orangered", "orangered", "orangered", "orangered", "orangered",
		 "blue3", "blue3", "blue3", "blue3", "blue3", "blue3", "blue3", "blue3", "blue3",
		 "blue3", "blue3", "blue3", "blue3", "blue3", "blue3", "blue3", "blue3", "blue3",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
 		 "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4", "deepskyblue4",
		 "deepskyblue4", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate", "chocolate", "chocolate", "chocolate", "chocolate", "chocolate",
		 "chocolate"), 
	main= 'Most Parsimonious Tree Distribution',xlab='MDS1',ylab='MDS2')
legend("bottomright", col = c("blue3", "orangered", "darkgreen", "deepskyblue4", "chocolate"),
	legend = c("Island 1", "Island 2", "Island 3", "Island 4", "Island 5"), pch = 19, bty = "n")
mtext(text = c("a)"), side = 1, adj = +1.05, line = +2)
plot(NMDS$points[,1], NMDS$points[,2], main= 'Bayesian tree distribution',xlab='MDS1',ylab='MDS2',
     cex.axis = 0.65, cex.lab = 0.8)
mtext(text = c("b)"), side = 1, adj = +1.05, line = +2)
dev.off()



