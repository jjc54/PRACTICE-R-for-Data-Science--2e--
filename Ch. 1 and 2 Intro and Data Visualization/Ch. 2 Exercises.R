###Installation###
# install.packages("tidyverse")
# install.packages("gapminder")
# install.packages("Lahman")
# install.packages("nycflights13")
# install.packages("palmerpenguins")
# install.packages("wakefield")

###Libraries###
library(tidyverse)
library(gapminder)
library(Lahman)
library(nycflights13)
library(palmerpenguins)
library(wakefield)

###Process###
#Whole Game
#Visualize
#Transform
#Import
#Program
#Communicate
#> = output in book
#Built in Quarto
#Physical copy in mid-2023

###Whole Game### - The Full Process of Data Science (in pieces!)

palmerpenguins::penguins
View(penguins)
glimpse(penguins)
?penguins
?ggplot()
?labs()

ggplot(
  data=penguins,
  mapping = aes(x=bill_length_mm, y=bill_depth_mm)
) + 
  geom_point() + 
  geom_smooth() + 
  labs(
    title = "Bill Depth v. Bill Length",
    subtitle= "Joshua J. Cook", 
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)"
  )

?geom_point()
?geom_smooth()

ggplot(
  data=penguins,
  mapping = aes(x=bill_length_mm, y=Species)
) + 
  geom_point() + 
  geom_smooth() + 
  labs(
    title = "Bill Depth v. Species",
    subtitle= "Joshua J. Cook", 
    x = "Species",
    y = "Bill Depth (mm)"
  )

ggplot(data = penguins) + 
  geom_point()

?geom_point()

ggplot(
  data=penguins,  
  mapping = aes(x=bill_length_mm, y=bill_depth_mm)
) +   
  geom_point(na.rm=TRUE) +   
  geom_smooth() +   
  labs(title = "Bill Depth v. Bill Length",
       subtitle= "Joshua J. Cook",     
       x = "Bill Length (mm)",    
       y = "Bill Depth (mm)"  
  )

?labs

ggplot(
  data=penguins,  
  mapping = aes(x=bill_length_mm, y=bill_depth_mm)
) +   
  geom_point() +   
  geom_smooth() +   
  labs(title = "Bill Depth v. Bill Length",
       subtitle= "Joshua J. Cook",     
       x = "Bill Length (mm)",    
       y = "Bill Depth (mm)",
       caption = "Data come from the palmerpenguins package."
  )

ggplot(
  data=penguins,  
  mapping = aes(x=flipper_length_mm, y=body_mass_g)
) +   
  geom_point(
    mapping = aes(color=bill_depth_mm, shape=bill_depth_mm)) +   
  geom_smooth() +   
  labs(title = "Body Mass v. Flipper Length",
       subtitle= "Joshua J. Cook",     
       x = "Flipper Length (mm)",    
       y = "Body Mass (g)"
  )

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) +
  geom_smooth(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )

?count
?cut_width
?geom_bar

ggplot(
  data=penguins,
  mapping = aes(y=species)
) + 
  geom_bar()

ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red") #only colors the outline

ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red") #fills bar

?geom_histogram()

ggplot(
  data=diamonds,
  mapping=aes(x=carat)
) + 
  geom_histogram(
    binwidth=10)

ggplot(
  data=diamonds,
  mapping=aes(x=carat)
) + 
  geom_histogram(
    binwidth=20)

ggplot(
  data=diamonds,
  mapping=aes(x=carat)
) + 
  geom_histogram(
    binwidth=30)

ggplot(
  data=diamonds,
  mapping=aes(x=carat)
) + 
  geom_histogram(
    binwidth=1)

ggplot(
  data=diamonds,
  mapping=aes(x=carat)
) + 
  geom_histogram(
    binwidth=0.5)

?geom_boxplot()
?stat_boxplot()

ggplot(penguins, aes(x = species, y = body_mass_g)) +
  geom_boxplot()

ggplot(penguins, aes(x = body_mass_g, color = species)) +
  geom_freqpoly(binwidth = 200, linewidth = 0.75)

?geom_freqpoly
?geom_density

ggplot(penguins, aes(x = body_mass_g, color = species, fill = species)) +
  geom_density(alpha = 0.5)

geom_density(
  mapping = NULL,
  data = NULL,
  stat = "density",
  position = "identity",
  ...,
  na.rm = FALSE,
  orientation = NA,
  show.legend = NA,
  inherit.aes = TRUE,
  outline.type = "upper"
)

ggplot(penguins, aes(x = body_mass_g, color = species)) +
  geom_density()

ggplot(penguins, aes(x = body_mass_g, color = species, fill = species)) +
  geom_density(alpha = 0.5)
?geom_bar
?facet_wrap()

?mpg
lapply(mpg, class)

ggplot(
  data=mpg,
  mapping= aes(x=displ, y=hwy)
) + 
  geom_point()


ggplot(  
  data=mpg,  
  mapping= aes(x=displ, y=hwy, color=cty)
) +   
  geom_point()

ggplot(  
  data=mpg,  
  mapping= aes(x=displ, y=hwy, color=cty, size=cty)
) +   
  geom_point()

ggplot(  
  data=mpg,  
  mapping= aes(x=displ, y=hwy, color=cty, size=cty, shape=cty)
) +   
  geom_point()

ggplot(  
  data=mpg,  
  mapping= aes(x=displ, y=hwy, linewidth=cty)
) +   
  geom_point()

ggplot(
  data=penguins,
  mapping=aes(x=bill_length_mm, y=bill_depth_mm)
) +
  geom_point()

ggplot(
  data=penguins,
  mapping=aes(x=bill_length_mm, y=bill_depth_mm)
) +
  geom_point() +
  facet_wrap(~species)

ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm, 
    color = species, shape = species
  )
) +
  geom_point()

?ggsave()


ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point()

ggsave(filename="mpg-plot.pdf")