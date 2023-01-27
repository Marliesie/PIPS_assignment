## Assignment 3.2.1R - 2023 Programming in Psychological Science
#
#
# Date              Programmer              Descriptions of Change
# ====           ================           ======================
# 27-01-2023         Marlies                   Original code


# Return important things I have to do in the morning

# packages
library(tidyr)

# The function
remind_me <- function() {
  tibble("tasks" = c("feed the cat", "cuddle the cat", "wear your glasses", "check mail"))
}

