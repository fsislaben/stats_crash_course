library(palmerpenguins)
library(tidyverse)
library(ggplot2)
library(ggstatsplot)

dat <- penguins %>%
  select(species, flipper_length_mm)

ggplot(dat) +
  aes(x = species, y = flipper_length_mm, color = species) +
  geom_jitter() +
  theme(legend.position = "none")

aggregate(flipper_length_mm ~ species,
          data = dat,
          function(x) round(c(mean = mean(x), sd = sd(x)), 2)
)

group_by(dat, species) %>%
  summarise(
    mean = mean(flipper_length_mm, na.rm = TRUE),
    sd = sd(flipper_length_mm, na.rm = TRUE)
  )

oneway.test(flipper_length_mm ~ species,
            data = dat,
            var.equal = TRUE # assuming equal variances
)


# Edit from here
x <- which(names(dat) == "species") # name of grouping variable
y <- which(
  names(dat) == "flipper_length_mm" # names of variables to test
)
method1 <- "anova" # one of "anova" or "kruskal.test"
method2 <- "t.test" # one of "wilcox.test" or "t.test"
my_comparisons <- list(c("Chinstrap", "Adelie"), c("Gentoo", "Adelie"), c("Gentoo", "Chinstrap")) # comparisons for post-hoc tests
# Edit until here


# Edit at your own risk
library(ggpubr)

png("./viz_out/anova.png", units="in", width=8.9, height=5, res=300)
for (i in y) {
  for (j in x) {
    p <- ggboxplot(dat,
                   x = colnames(dat[j]), y = colnames(dat[i]),
                   color = colnames(dat[j]),
                   legend = "none",
                   palette = "npg",
                   add = "jitter"
    )
    print(
      p + stat_compare_means(aes(label = paste0(after_stat(method), ", p-value = ", after_stat(p.format))),
                             method = method1, label.y = max(dat[, i], na.rm = TRUE)
      )
      + stat_compare_means(comparisons = my_comparisons, method = method2, label = "p.format") # remove if p-value of ANOVA or Kruskal-Wallis test >= alpha
    )
  }
}
dev.off()
