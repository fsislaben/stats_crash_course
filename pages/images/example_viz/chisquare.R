library(ggstatsplot)

p <- ggbarstats(
  data  = mtcars, 
  x     = am, 
  y     = cyl
)

png("./viz_out/chisquare.png", units="in", width=8.9, height=5, res=300)
p
dev.off()