library(ggplot2)
library(dplyr)
library(RColorBrewer)
library(ggthemes)

# conversão da variável cyl para fator (variável categórica)
mpg$cyl <- as.factor(mpg$cyl)
str(mpg$cyl)

ggplot(mpg, aes(x = hwy, y = displ)) +
  geom_point(aes(shape = cyl), size = 4, stroke = 0.75) +
  labs(
    title = "Relação entre economia de combustível e deslocamento do motor",
    subtitle = "Incluindo ano e número de cilindros",
    x = "Combustivel por milhas em galão",
    y = "Deslocamento do motor (litros)"
  ) +
    theme_clean()
