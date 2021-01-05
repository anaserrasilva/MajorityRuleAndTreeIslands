##############################################################################
#                                                                            #
# R script to partition tree files into 1-NNI islands, as per Maddison, 1991 #
#                                                                            #
#                     Parallel version                                       #
#                                                                            #
##############################################################################


#######libraries######

library(devtools)
install_github("anaserrasilva/islandNeighbours")
library(islandNeighbours)
library(foreach)
library(doParallel)

######################


######load trees######

t<-read.nexus("PardoCharacters.nex.trprobs")

######get 1-NNI islands######

#extract NNI-neighbourhoods
#parallel analysis run on Windows, other packages for parallelisation may perform better in Mac and Unix systems

#set number of cores
numCores<-detectCores() - 2
cl <- makeCluster(numCores)
registerDoParallel(cl)

NNIneighbours <- nniNeighbourhoods(t, verbose = F)

stopCluster(cl)


#extract islands
NNIislands<-neighbourhoodMerger(NNIneighbours)

#write islands to newick files
write.islands(NNIislands)
