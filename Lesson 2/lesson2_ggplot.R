install.packages("ggplot2")

library(ggplot2)

hotel_bookings <- read.csv("C://Users//di11m//Downloads//Coursera//Data Analysis//RStudio//hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

#Plot of lead-time booking vs no. of children
lt_v_child <- ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

lt_v_child  #hypothesis of greater lead-time = more children is incorrect

#Plot of weekend bookings vs no. of children 
weekend_v_child <- ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))

weekend_v_child  #hypothesis of more weekend bookings = less children is correct