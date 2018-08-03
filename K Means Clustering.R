cmat  # coordinates of centriods
points(cx,cy,col=c("red","orange","purple"),pch=3,cex=2,lwd=2)# marking centriods

mdist(x,y,cx,cy) # distance from centroids
apply(distTmp,2,which.min) # minimum distance from a centriod
points(x,y,pch=19,cex=2,col=cols1[newClust]) # coloring the points based on the cluster

# calculating centriod of clusters created
tapply(x,newClust,mean)
tapply(y,newClust,mean)
#plotting new centriods
points(newCx,newCy, col=cols1, pch=8, cex=2, lwd=2)

#reassign the data points to new clusters if necessary
mdist(x,y,newCx,newCy) # distance from new centriods
distTmp2
apply(distTmp2,2,which.min) # find the new cluster assignments for the points.
points(x,y,pch=19,cex=2,col=cols1[newClust2])

# calculating centriod of clusters created
tapply(x,newClust2,mean)
tapply(y,newClust2,mean)

#plotting new centriods
points(finalCx,finalCy, col=cols1, pch=9, cex=2, lwd=2)

# Using Kmean function
kmeans(dataFrame, centers = 3) # dataFrame contains x and y coordinates
kmObj$iter
plot(x,y,col=kmObj$cluster, pch=19, cex=2)
points(kmObj$centers,col=c("black","red","green"), pch=3, cex=3, lwd=3)

plot(x,y, col=kmeans(dataFrame,6)$cluster, pch=19, cex=2)
plot(x,y,col=kmeans(dataFrame,6)$cluster,pch=19,cex=2)
plot(x,y,col=kmeans(dataFrame,6)$cluster,pch=19,cex=2)
