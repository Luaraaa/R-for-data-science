library(ggplot2)
library(palmerpenguins)
library(dplyr)
library(ggthemes)

ggplot(penguins, aes(y = species)) +
    geom_bar()