data("ToothGrowth")

p <- ggboxplot(ToothGrowth, x = "supp", y = "len",
               color = "supp", palette = "jco",
               add = "jitter")
p + stat_compare_means(method = "t.test")
