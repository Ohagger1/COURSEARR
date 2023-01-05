library(tidyverse)
library(ggplot2)
data("diamonds")
View(diamonds)
#View a snapshot of the data
head(diamonds)
tail(diamonds)

#See the structure of the data
str(diamonds)
summarise(dimaonds)
summary(diamonds)
colnames(diamonds)

#Add a column to the end of the data
mutate(diamonds,carat_2=carat*2)

