library(tidyverse)
library(ggplot2)

hotel_bookings <- read.csv("C://Users//di11m//Downloads//Coursera//Data Analysis//RStudio//hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

#Messy bar chart comparison of City/Resort hotel market segments
bar1 <- ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

#Improved bar chart 1
bar2 <- ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Market Segment Count: City vs Resort Hotels")

#oldest and earliest hotel bookings
mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

#Improved bar chart 2 w/ subtitle
bar3 <- ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))

#Improved bar chart 3 w/ caption for readability
bar4 <-ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))

#Improved bar chart 4 w/ axes descriptions and Title change
bar5 <- ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Bookings by Market Segment: City vs Resort Hotels",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")

#Save last run bar chart
ggsave('hotel_booking_chart.png')
