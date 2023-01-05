install.packages('palmerpenguins')
library('palmerpenguins')

library('ggplot2')
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(colour=species))

#Changed shape and colour
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(colour=species, shape=species))

#Facet wrap added to seperate the grpahs
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(colour=species, shape=species))+facet_wrap(~species)

#Title added
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(colour=species, shape=species))+
  facet_wrap(~species)+labs(title="Palmer penguins")

