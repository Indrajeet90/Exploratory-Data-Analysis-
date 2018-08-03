library(ggplot2)
library(fields)
library(jpeg)
library(datasets)

# HC dandograms
dist(dataFrame) # dataFrame is a user created dataset
hc <- hclust(distxy)
plot(hc)
plot(as.dendrogram(hc))
abline(h=1.5, col="blue")
abline(h=0.4, col="red")
abline(h=0.05, col="green")

dist(dFsm)
hc

# Heatmap
heatmap(dataMatrix, col=cm.colors(25))
heatmap(mt)
mt
plot(denmt)
distmt
