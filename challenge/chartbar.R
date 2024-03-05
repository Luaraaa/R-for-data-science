library(ggplot2)
library(palmerpenguins)
library(dplyr)
library(ggthemes)

ggplot(penguins, aes(x = species)) +
    geom_bar(fill = species) 
