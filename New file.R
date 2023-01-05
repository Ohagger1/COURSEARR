install.packages('palmerpenguins')
library('palmerpenguins')

library('ggplot2')
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(colour=species))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(colour=species, shape=species))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(colour=species, shape=species))+facet_wrap(~species)
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(colour=species, shape=species))+facet_wrap(~species)+labs(title="Palmer penguins")
