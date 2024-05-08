install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library("tidyverse")
library("skimr")
library("janitor")

bookings_df <- read_csv("hotel_bookings.csv")

glimpse(bookings_df)  #new functions
skim_without_charts(bookings_df)

trimmed_df <- bookings_df %>% 
  select(hotel, lead_time, is_canceled) %>% 
  rename(hotel_type = hotel)

example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

example_df <- bookings_df %>%
  mutate(guests = adults + children + babies)

head(example_df)

example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled), average_lead_time = mean(lead_time))
  head(example_df)
