
#Faceting by grid for sex and species
ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species) 
  


#Annotate and label
ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Facet grid by sex and species", subtitle = "Smaple fo these penguins", caption = "Data collected by Dr.Hagger")+
  annotate("text", x=190,y=5500, label="The Gentoo are the largest",colour="blue",fontface="bold",size=5)

#Save as a variable
p <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Facet grid by sex and species", subtitle = "Smaple fo these penguins", caption = "Data collected by Dr.Hagger")+
  annotate("text", x=190,y=5500, label="The Gentoo are the largest",colour="blue",fontface="bold",size=5)

#Add annotation to a variable graph
p+annotate("text", x=210,y=4000, label="Hello")

