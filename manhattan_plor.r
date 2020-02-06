library(qqman)
library(lattice)

pldf = read.table('plink5.assoc.linear', header = T)

m = manhattan(pldf, ylim = c(0, 10), chr = 'CHR', genomewideline = 6.02, suggestiveline = F)
