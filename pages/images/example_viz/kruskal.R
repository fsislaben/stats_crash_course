library(ggpubr)

data("ToothGrowth")

# Visualize: Specify the comparisons you want
my_comparisons <- list( c("0.5", "1"), c("1", "2"), c("0.5", "2") )

p <- ggboxplot(ToothGrowth, x = "dose", y = "len",
          color = "dose", palette = "jco")+ 
  stat_compare_means(comparisons = my_comparisons)+ # Add pairwise comparisons p-value
  stat_compare_means(label.y = 50)     # Add global p-value

png("./viz_out/kruskal.png", units="in", width=8.9, height=5, res=300)
p
dev.off()