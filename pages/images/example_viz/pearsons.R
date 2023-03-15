library("ggpubr")

my_data <- mtcars

p <- ggscatter(my_data, x = "mpg", y = "wt", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          cor.coeff.args = list(method = "pearson", label.x.npc = "middle", label.y.npc = "top"),
          xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

png("./viz_out/pearsons.png", units="in", width=8.9, height=5, res=300)
p
dev.off()