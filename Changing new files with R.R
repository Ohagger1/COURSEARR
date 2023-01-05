id <- c(1:10)


nam2e <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")


job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

#Create data frame with id,name and job_title
employee <- data.frame(id, nam2e, job_title)
View(employee)
print(employee)

#Seperate the names column into two separate columns
employee2 <- separate(employee,name,into=c("first_name","last_name"), sep = " ")
print(employee)


employee <- data.frame(id, first_name,last_name,job_title)

#Unifies the two columns into 1
unite(employee2,'name',first_name,last_name,sep = ' ')      

print(employee)

#Mutates the column into different columns
penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000,flipper_length_m = flipper_length_mm/1000)

#Cleans the data column names
clean_names(employee)

penguins %>%
  drop_na() %>% 
  group_by(species) %>% 
  summarise(mean(body_mass_g))  
  


mean(penguins$body_mass_g,na.rm = T)

str(penguins)
