# Q.3.1.6
# Load dataset ChickWeight
ChickWeight <- ChickWeight

# Calculate max weight for each chick
max_chick_weight <-
  aggregate(ChickWeight$weight,
            list(as.numeric(as.character(ChickWeight$Chick))),
            max)
colnames(max_chick_weight) <-
  c("chick", "max_weight")


# Create ggplot with selection of chicks
plot_chick_weight <- ggplot(max_chick_weight) +
  geom_col(mapping = aes(x = as.character(chick), y = max_weight),
           data = max_chick_weight) +
  scale_x_discrete(
    limits = c("1", "20", "3", "40", "5"),
    breaks = c("1", "20", "3", "40", "5")
  ) +
  labs(x = "chick")