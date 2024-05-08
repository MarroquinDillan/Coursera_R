library(tidyverse)
library(ggplot2)

hotel_bookings <- read.csv("C://Users//di11m//Downloads//Coursera//Data Analysis//RStudio//hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

#Refresher chart of booking time vs no. of children
plot1 <- ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

#Bar chart of hotel type filtered by market segment
plot2 <- ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

#Bar charts of hotel type separated by market segment (facet wrap)
plot3 <- ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

#Data set of Online hotel bookings for City Hotel
onlineta_city_hotels <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

View(onlineta_city_hotels)

#Bar chart of Online hotel bookings for City Hotel
plot4 <- ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))
