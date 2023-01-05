library(tidyverse)
library("palmerpenguins")

penguins %>%  arrange(-bill_length_mm)

#To save the data in a data frame
penguins2 <- penguins %>%  arrange(-bill_length_mm) 

#To view the new data set
View(penguins2)

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(mean_bill_length_mm = max(bill_length_mm))

penguins %>% 
  group_by(species,island) %>% 
  drop_na() %>% 
  summarise(max_bl = max(bill_length_mm),mean_bl = mean(bill_length_mm))

penguins %>% filter(species == "Adelie")
