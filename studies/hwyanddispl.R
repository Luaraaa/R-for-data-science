library(ggplot2)
library(dplyr)
library(ggthemes)

ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point(aes(color = class, shape = drv)) +
scale_color_colorblind()
