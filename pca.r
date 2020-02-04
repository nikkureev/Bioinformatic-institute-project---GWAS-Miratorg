setwd("/home/nikolay/GWAS/new_plink")

pcs = read.table( "plink.eigenvec" )

colnames(pcs)[3:7] = c("PC1","PC2","PC3","PC4","PC5")
write.table(pcs, file = "plink.eigenvec", sep = "")

palette = c("red2","green2","blue2","yellow3", "grey40","grey70","purple")
pcs_r = palette[pcs[,1]]

#plot
plot(pcs[,3:7], col="red2", lower.panel=NULL)
legend(0.1, 0.5, col=palette, legend = levels(pcs[,1]), pch = c(rep(4,4),rep(20,3)), xpd=NA )

eigen = c(
13.0315,
10.6712,
8.30262,
7.82377,
7.24191,
6.48997,
6.3925,
6.15178,
6.0749,
5.85972,
5.49108,
5.39585,
5.25176,
5.0922,
5.07213,
4.87434,
4.80883,
4.74826,
4.61487,
4.58621)
num = 1:20

plot(num,eigen, xlab ="Factor number", ylab="Eigenvalue", col="blue")
