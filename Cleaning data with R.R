#Install and load packages into R
install.packages("here")
install.packages("skimr")
install.packages("janitor")
library("here")
library("skimr")
library("janitor")
library("dplyr")

install.packages("palmerpenguins")
library("palmerpenguins")

#Summmarise the data
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

#Select useful or not useful column in the data
penguins %>%
  select(-species)

#Rename a column name
penguins %>% 
  rename(island_new=island)

#Change all column names to lower case
penguins %>% 
  rename_with(tolower)

#Clean name with janitor package
penguins %>% 
  clean_names()

penguins %>% 
  rename(gender=sex)



