##############################################################################
#                                                                            #
# R script to partition tree files into 1-NNI islands, as per Maddison, 1991 #
#                                                                            #
#                     Serial version                                         #
#                                                                            #
##############################################################################


#######libraries######

library(devtools)
install_github("anaserrasilva/islandNeighbours")
library(islandNeighbours)

######################


######load trees######

t1<-read.nexus("PardoCharacters.nex.trprobs")

#unroot trees
t<-as.multiPhylo(lapply(t1, unroot))


#make all edge lengths 1, only interested in island size
for (i in 1:length(t)) {
  t[[i]]$edge.length<-rep(1, nrow(t[[i]]$edge))
}

######get 1-NNI islands######

#extract NNI-neighbourhoods
NNIneighbours <- NNIneighbourhoods(t)

#extract islands
NNIislands<-neighbourhoodMerger(NNIneighbours)

#write islands to newick files
write.islands(NNIislands)
