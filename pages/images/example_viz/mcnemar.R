library(ggstatsplot)

set.seed(9) # for reproducibility 
data <- data.frame(
  before = sample(c("+", "-", "+", "+"), 20, replace = TRUE),
  after  = sample(c("-", "+", "-", "-"), 20, replace = TRUE))

ggbarstats(
  data = data,
  x    = before, 
  y    = after,
  paired = TRUE, 
  label = "both"
)

data