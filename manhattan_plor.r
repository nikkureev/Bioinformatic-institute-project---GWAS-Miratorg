pldf = read.table('plink5.assoc.linear', header = T)

library(qqman)
library(lattice)

m = manhattan(pldf, ylim = c(0, 10), chr = 'CHR', genomewideline = 6.02, suggestiveline = F)
