data("ToothGrowth")

p <- ggboxplot(ToothGrowth, x = "supp", y = "len",
               color = "supp", palette = "jco",
               add = "jitter")

p + stat_compare_means(method = "t.test")

png("./viz_out/ttest.png", units="in", width=8.9, height=5, res=300)
p + stat_compare_means(method = "t.test")
dev.off()