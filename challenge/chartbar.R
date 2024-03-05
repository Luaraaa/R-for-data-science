library(ggplot2)
library(palmerpenguins)
library(dplyr)
library(ggthemes)

ggplot(diamonds, aes(x = carat, fill = carat)) +
    geom_histogram(binwidth = 20) 
