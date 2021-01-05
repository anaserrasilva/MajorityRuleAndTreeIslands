########################################################
#                                                      #
# R script to partition tree files into x-RF islands   #
#                                                      #
########################################################


#######libraries######

library(devtools)
install_github("anaserrasilva/islandNeighbours")
library(islandNeighbours)

######################


######load trees######

t<-read.nexus("mytrees.tre")

######get x-RF islands######

#extract NNI-neighbourhoods

isles<-xRFislands(ttree = t, threshold = 12, output = list(), verbose = T)

#write islands to newick files
write.islands(isles)
