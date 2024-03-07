library(ggplot2)
library(dplyr)
library(viridis)

# conversão da variável cyl para fator (variável categórica)
mpg$cyl <- as.factor(mpg$cyl)
str(mpg$cyl)

ggplot(mpg, aes(x = hwy, y = displ)) +
    geom_point(aes(color = year, size = year, shape = cyl)) +
    scale_color_viridis()
