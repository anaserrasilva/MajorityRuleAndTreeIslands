##rarefation
#multiple replicates
rand <- t(replicate(1000, unlist(list(sort(sample.int(18, 18)), sort(sample.int(72,18) + 18), sort(sample.int(90, 18) + 90), sort(sample.int(216, 18) + 180), sort(sample.int(486, 18) + 396)))))

#no replicate
#c(sort(sample.int(18, 18)), sort(sample.int(72,18) + 18), sort(sample.int(90, 18) + 90), sort(sample.int(216, 18) + 180), sort(sample.int(486, 18) + 396))

write.table(rand, "randTest.txt", sep = "\t")


##oversampling
#multiple replicates
over <- t(replicate(1000, unlist(list(sort(sample.int(18,486,replace=T)),sort(sample.int(72,486,replace=T)+18),sort(sample.int(90,486,replace=T)+90),sort(sample.int(216,486,replace=T)+180),sort(sample.int(486,486,replace=F)+396)))))

#no replicate
over <- c(sort(sample.int(18,486,replace=T)),sort(sample.int(72,486,replace=T)+18),sort(sample.int(90,486,replace=T)+90),sort(sample.int(216,486,replace=T)+180),sort(sample.int(486,486,replace=F)+396))

write.table(over, "overTest.txt", sep = "\t") #cannot be used in PAUP like rarefaction

#to turn into PAUP "compatible" input tree numbers need to be converted to weights
#for each row
t <- unlist(over[1,])
a <- rle(sort(t))
b <- data.frame(tree=a$values,weight=a$lengths)


