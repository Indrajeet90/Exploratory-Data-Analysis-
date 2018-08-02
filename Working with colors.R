library(jpeg)
library(RColorBrewer)
library(datasets)
library(grDevices)

#colorRamp
sample(colors(),10)
pal <- colorRamp(c("red","blue"))
pal(0)
pal(1)
pal(seq(0,1,len=6))

# colorRampPalette
p1<- colorRampPalette(c("red","blue"))
p1(2)
p1(6)

p2 <- colorRampPalette(c("red","yellow"))
p2(2)
p2(10)

showMe(p1(20)) # showme is a user-created function
showMe(p2(20))
showMe(p2(2))

p3 <- colorRampPalette(c("blue","green"),alpha=0.5)
p3(5)

# using alpha parameter
plot(x,y,pch=19,col=rgb(0,.5,.5))  # x,y are user generated random variables
plot(x,y,pch=19,col=rgb(0,.5,.5,.3)) # alpha=0.3 as fourth argument to rgb

# Using colorBrewer palettes:RColorBrewer Package
cols <- brewer.pal(3,"BuGn")
showMe(cols)
pal <- colorRampPalette(cols)
showMe(pal(20))

# Using pal to display information
image(volcano,col=pal(20))
image(volcano,col=p1(20))
