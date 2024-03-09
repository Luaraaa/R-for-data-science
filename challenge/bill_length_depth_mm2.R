library(ggplot2)
library(palmerpenguins)
library(ggthemes)

ggplot(
    penguins,
    mapping = aes(
        x = bill_depth_mm,
        y = bill_length_mm,
        color = species)) +
    geom_point(aes(shape = species)) +
    theme_minimal()