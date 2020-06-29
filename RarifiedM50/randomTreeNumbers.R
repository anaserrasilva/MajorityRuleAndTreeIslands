rand <- t(replicate(1000, unlist(list(sort(sample.int(18, 18)), sort(sample.int(72,18) + 18), sort(sample.int(90, 18) + 90), sort(sample.int(216, 18) + 180), sort(sample.int(486, 18) + 396)))))

write.table(rand, "randTest", sep = "\t")