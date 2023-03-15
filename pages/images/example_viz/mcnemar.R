library(ggstatsplot)

set.seed(9) # for reproducibility 
data <- data.frame(
  before = sample(c("+", "-", "+", "+"), 20, replace = TRUE),
  after  = sample(c("-", "+", "-", "-"), 20, replace = TRUE))

p <- ggbarstats(
  data = data,
  x    = before, 
  y    = after,
  paired = TRUE, 
  label = "both"
)

png("./viz_out/mcnemar.png", units="in", width=8.9, height=5, res=300)
p
dev.off()