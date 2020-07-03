# MajorityRuleAndTreeIslands

Supplementary data for:

Serra Silva, A. and Wilkinson, M. (202#). On defining islands of trees and their effects on consensus. *In prep.*

### Contents of each folder

- Data: contains the datamatrix and PAUP* and MrBayes blocks used to run the phylogenetic analyses

- PardoIslands.zip: contains the Nexus formatted treefiles containing the TBR/SPR/NNI islands of most parsimonious trees yielded by [Pardo et al.](https://pubmed.ncbi.nlm.nih.gov/28630337/)'s (2017) datamatrix, and the strict and majority-rule consensus of all trees
  - FirstIsland.tre has 18 trees
  - SecondIsland.tre has 72 trees
  - ThirdIsland.tre has 90 trees
  - FourthIsland.tre has 216 trees
  - FifthIsland.tre has 486 trees
  - allTrees\*.tre are the Nexus formatted consensus trees of the all 882 most-parsimonious trees

\newline

- PartitionedByIsland.zip: contains the files needed to run a partitioned by island consensus and its output
  - Island files also in PardoIslands
  - consensusBlock.nex contains all the PAUP\* commands needed to run the consensus analyses
  - Each island has a file with its strict consensus (\*Strict.tre), majority-rule consensus (\*M50.tre) and log (\*.log)

\newline

- WeightedByIsland.zip: contains the files needed to tun a weighted by island size consensus and its ouptut
  - Nexus formated island files with each tree weighted inversely to island size (\*Weights.tre)
  - consensusBlock.nex contains all the PAUP\* commands needed to run the consensus analyses
  - Files named AllIslands\* correspond to the output files

\newline

- RarefiedM50.zip: contains the files needed to run a rarefied majority-rule consensus and its output
  - Island files also in PardoIslands
  - randomTreeNumbers.R is the random number generator
  - randTest.txt is the list of random tree numbers
  - consensusBlock.nex contains all the PAUP\* commands needed to run the consensus analyses of the randomly selected tree numbers
  - 1000ConsensusTrees contains the output of the majority-rule consensus (Rarefied\*), and a strict (summaryStrict.\*) and majority-rule (summaryM50.\*) summary of the 1000 consensus trees

\newline

- PardoBayes_islands.zip: contains the files needed to extract NNI islands from a Bayesian tree distribution and the NNI islands
  - PardoCharacters.nex.trprobs is the Bayesian tree distribution from an analysis of [Pardo et al.](https://pubmed.ncbi.nlm.nih.gov/28630337/)'s (2017) datamatrix
  - nniIslands_PardoBayes_series.R performs the island extraction
  - nniIslands_PardoBayes_parallel.r performs the island extraction with a parallel implementation
  - islandFiles contains the NNI islands extracted from the Bayesian tree distribution


### Citations

If you use the datamatrix please cite:

Pardo, J.D., Small, B.J. and Huttenlocker, A.K., 2017. Stem caecilian from the Triassic of Colorado sheds light on the origins of Lissamphibia. Proceedings of the National Academy of Sciences, 114(27), pp.E5389-E5395.


### Problems opening zipped folders

If you cannot open teh zipped folders, the data is also available through:

https://github.com/anaserrasilva/MajorityRuleAndTreeIslands

### Installing *nniNeighbours*

To install the package used to extract the NNI islands use:

```r
library(devtools)
install_github("anaserrasilva/islandNeighbours")
library(islandNeighbours)
```