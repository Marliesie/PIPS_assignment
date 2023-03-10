# This is a function to create colorful art with flowers!

# It will bring you beautiful art, different every time!. The art is 
# generated by random numbers, but you can set the seed and reproduce your 
# favorite piece. The function can also let you specify the number of flowers 
# you want to see in your art piece. 

# please note: You might get a warning (In RColorBrewer::brewer.pal(n, pal) :
# n too large), this will only result in the inner color being light gray, and
# looks just as nice! 



# Packages
install.packages("remotes")
remotes::install_github("dill/emoGG")
library(emoGG)

library(ggplot2)


# Make art function
make_art <- function(n_flowers = 50, 
                     color_wave_seed = NULL, 
                     flower_points_seed = NULL) {
  
# Create data for 'color waves'
  set.seed(color_wave_seed)
  art_x <- sample(1:100, 100, replace = TRUE)
  art_y <- sample(1:100, 100, replace = TRUE)
  
# Create data for flower placement
  # Add missing values up to 100
  if (n_flowers < 100) {
    set.seed(flower_points_seed)
    flower_x_points <<- c(sample(1:100, n_flowers, replace = TRUE),
                          rep(-1, 100 - n_flowers))
    set.seed(2903)
    flower_y_points <<- c(sample(1:100, n_flowers, replace = TRUE),
                          rep(-1, 100 - n_flowers))
  # Sample for multiple of 100    
  } else if (n_flowers >= 100 & n_flowers %% 100 == 0) {
    set.seed(flower_points_seed)
    flower_x_points <<- sample(1:100, n_flowers, replace = TRUE)
    set.seed(2064)
    flower_y_points <<- sample(1:100, n_flowers, replace = TRUE)
  # Stop running when no multiple of 100    
  } else if (n_flowers >= 100 & n_flowers %% 100 != 0) { 
    stop("if n_flowers > 100, it must be a multiple of 100!")
  }

  
# Combine all in dataset
  art_data <- data.frame(art_x, art_y, flower_y_points, flower_x_points)
                                     

# Make plot
  ggplot(art_data, aes(art_x, art_y)) +
    # color waves
    geom_density2d_filled(show.legend = FALSE) +                   
    scale_fill_brewer(aesthetics = "fill", palette = "Set3") +
    scale_x_continuous(expand = c(0,0), name = NULL, breaks = NULL) +
    scale_y_continuous(expand = c(0,0), name = NULL, breaks = NULL) +
    # flowers 
    geom_emoji(emoji = "1f338",                                   
               stat = "identity", 
               mapping = aes(x = flower_x_points, y = flower_y_points),
               na.rm = TRUE
               )
}
