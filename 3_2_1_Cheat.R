# A function to cheat on assignment 3.1 of the PIPS course.
# You can get the answers for question 6, 8 and 13. They will open in a new 
# script in Rstudio, so you can modify and run everything you need.

# packages
library(meme)
library(ggplot2)

# funtion
cheat <- function (question) {
  
  
  # Function to open script from url
  rs_url_open <- function(URL) {
    tf <- tempfile(fileext = ".R")
    download.file(URL, tf, quiet = TRUE)
    rstudioapi::navigateToFile(tf)
  }
  
  # Create meme
  cheat_meme <- meme("https://imgflip.com/s/meme/Angry-Baby.jpg", 
                     upper = "No Cheating!", 
                     vjust = .1, 
                     size = 3)  
  
  # Answers for each question
  if (question == 6) {
    rs_url_open(
      paste0("https://raw.githubusercontent.com/Marliesie/",
             "PIPS_assignment/main/3_1_question_6.R")
    )
    answer <- "open question 6"
  } else if (question == 8) {
    rs_url_open(
      paste0("https://raw.githubusercontent.com/Marliesie/",
             "PIPS_assignment/main/3_1_question_8.R")
    )
    answer <- "open question 8"
  } else if (question == 13) {
    rs_url_open(
      paste0("https://raw.githubusercontent.com/Marliesie/",
             "PIPS_assignment/main/3_1_question_13.R")
    )
    answer <- "open question 13"
  } else {
    answer <- print(cheat_meme)
  }
  return(answer)
}
