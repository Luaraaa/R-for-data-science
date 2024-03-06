library(ggplot2)
library(palmerpenguins)
library(dplyr)
library(ggthemes)

diamonds$carat_cat <- cut(diamonds$carat, breaks = 10)
ggplot(diamonds, aes(x = carat, fill = carat_cat)) +
    geom_histogram(binwidth = 0.5)
