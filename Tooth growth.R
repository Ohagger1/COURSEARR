data("ToothGrowth")
view(ToothGrowth)

install.packages('dply2')
library(dplyr)
filtered_tooth <-  filter(ToothGrowth,dose ==0.5)
View(filtered_tooth)


arrange(filtered_tooth,len)

#Pipe operators
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose>0.5) %>% 
  group_by(supp) %>%
  summarize(mean_len = mean(len,na.rm = T),.group="drop")

#view function
filtered_toothgrowth

head(ToothGrowth)
str(ToothGrowth)
