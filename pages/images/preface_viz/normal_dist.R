x <- seq(-20, 20, by = .1)
y <- dnorm(x, mean = 0, sd = 5.0)

png("./viz_out/bellcurve.png", units="in", width=8.9, height=5, res=300)
plot(x,y, main = "Normal Distribution", col = "blue")
dev.off()

df <- data.frame(x, y)

df$x<=5&df$x>=-5

s1 <- df[df$x<=5&df$x>=-5,]

png("./viz_out/sd.png", units="in", width=8.9, height=5, res=300)
plot(x,y, main = "Standard Deviations", col = "blue")
abline(v = 0)
abline(v = 5, lty = 2)
abline(v = 10, lty = 2)
abline(v = -5, lty = 2)
abline(v = -10, lty = 2)
dev.off()

dnorm_limit <- function(x) {
  y <- dnorm(x)
  y[x < 0  |  x > 2] <- NA
  return(y)
}

base <- ggplot() + xlim(-10, 10)
p <- base +
      geom_function(aes(colour = "Population 1"), fun = dnorm, args = list(mean = -3, sd = 2), size = 2) +
      geom_function(aes(colour = "Population 2"), fun = dnorm, args = list(mean = 3, sd = 2), size = 2) +
      geom_ribbon() +
      theme_classic()

png("./viz_out/overdist.png", units="in", width=8.9, height=5, res=300)
p
dev.off()

# criticalValues <- qnorm(c(.025,.975))

# shadeNormalTwoTailedLeft <- rbind(c(criticalValues[1],0), subset(normalDistribution, x < criticalValues[1]))

# shadeNormalTwoTailedRight <- rbind(c(criticalValues[2],0), subset(normalDistribution, x > criticalValues[2]), c(3,0))
