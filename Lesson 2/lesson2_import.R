install.packages("tidyverse")
library(tidyverse)

#Coursera read.csv example
bookings_df <- read_csv("hotel_bookings.csv")

head(bookings_df)

str(bookings_df)

colnames(bookings_df)

View(bookings_df)

new_df <- select(bookings_df, `adr`, adults)

mutate(new_df, total = `adr` / adults)

#My .csv practice
bookshelf_df <- read.csv("book_project_Dillan.csv")

View(bookshelf_df)
head(bookshelf_df)

new2_df <- mutate(bookshelf_df, page_width = Last.Page.Number + Blank.Pieces.of.Paper / Width)
