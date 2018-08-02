library(lattice)
head(airquality)

# create a scatter plot
xyplot(Ozone~Wind,airquality)
xyplot(Ozone ~ Wind, data = airquality, pch=8, col="red", main="Big Apple Data")

#generate a multipanel plot
xyplot(Ozone ~ Wind | as.factor(Month), data = airquality,layout=c(5,1))
xyplot(Ozone ~ Wind | Month, data = airquality,layout=c(5,1)) # month is named column

# Trellis plot elements
p <- xyplot(Ozone~Wind,data=airquality)
print(p)
names(p)

mynames[myfull]
p[["formula"]]
p[["x.limits"]]

# panel functions
table(f)
xyplot(y~x|f, layout=c(2,1))
v1
v2
myedit("plot1.R")
source(pathtofile("plot1.R"),local=TRUE)

myedit("plot2.R")
source(pathtofile("plot2.R"),local=TRUE)

# Multi-panel plots examples
str(diamonds)
table(diamonds$color)
table(diamonds$color,diamonds$cut)
myedit("myLabels.R")
source(pathtofile("myLabels.R"),local=TRUE)
xyplot(price~carat | color*cut, data = diamonds,strip = FALSE,pch=20,xlab=myxlab,ylab = myylab,main=mymain)
