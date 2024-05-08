install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library("tidyverse")
library("skimr")
library("janitor")

hotel_bookings <- read_csv("hotel_bookings.csv")

#dataset preview
head(hotel_bookings)
str(hotel_bookings)
glimpse(hotel_bookings)
colnames(hotel_bookings)

#most-least lead time
hotel_bookings_v2 <- arrange(hotel_bookings, -lead_time)
head(hotel_bookings_v2)

#alternatively...
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)
mean(hotel_bookings$lead_time)  #mean

#filtered for only City Hotel
hotel_bookings_city <-filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")
head(hotel_bookings_city)

mean(hotel_bookings_city$lead_time)

#summary
hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))

head(hotel_summary)
