library(tidyverse)
library(skimr)
library(janitor)

bookings_df <- read.csv("hotel_bookings.csv")

trimmmed_df <- bookings_df %>% 
  select(hotel, is_canceled,lead_time) %>% 
  rename(hotel_type = hotel)

example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
View(example_df)


example_df <- bookings_df %>%
  mutate(guests = adults+children+babies)

head(example_df)


example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

head(example_df)
