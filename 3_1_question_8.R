# Q.3.1.8 ---------------------------------------------------------------------
# install patchwork
install.packages("patchwork")
library(patchwork)

# create subset of chicks
ChickWeightsubset <- subset(ChickWeight,
                            ChickWeight$Chick %in% c("1", "20", "3", "40", "5"))

# create line plot
lineplot_chick_weight <- ggplot(ChickWeightsubset,
                                aes(x = Time, y = weight)) +
  geom_line(mapping = aes(color = Chick)) +
  scale_color_manual(
    limits = c("1", "20", "3", "40", "5"),
    values = c("purple", "blue", "turquoise", "green", "yellow")
  )

# combine plots
plot_chick_weight+lineplot_chick_weight