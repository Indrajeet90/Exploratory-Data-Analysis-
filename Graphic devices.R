with(faithful, plot(eruptions, waiting))
title("Old Faithful Geyser data")

dev.cur()
pdf(file="myplot.pdf")
dev.off()

with(faithful, plot(eruptions, waiting))
title("Old Faithful Geyser data")
dev.copy(png,file="geyserplot.png")
dev.off()