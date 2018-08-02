head(cars)

# Base plot system
with(cars,plot(speed,dist))
text(mean(cars$speed),max(cars$dist),"Cars speed to stop")

# Lattice plot system
head(state)
table(state$region)
xyplot(Life.Exp ~ Income | region, data = state, layout = c(4, 1))
xyplot(Life.Exp ~ Income | region, data = state, layout = c(2, 2))       

# Ggplot system
head(mpg)
dim(mpg)
table(mpg$model)
qplot(displ,hwy,data=mpg)