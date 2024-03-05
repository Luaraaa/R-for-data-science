library(ggplot2)
library(palmerpenguins)
library(dplyr)
library(ggthemes)

ggplot(penguins, aes(x = species, fill = species)) +
    geom_bar() 
