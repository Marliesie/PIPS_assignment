# Return important things I have to do in the morning, 
# no arguments needed to use this function!

# packages
library(tibble)


# The function
remind_me <- function() {
  tibble("tasks" = c("feed the cat", 
                     "cuddle the cat", 
                     "wear your glasses", 
                     "check mail")
         )
}

