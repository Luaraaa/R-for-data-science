library(ggplot2)
library(palmerpenguins)
library(dplyr)
library(ggthemes)

#gráfico de barras empilhadas com duas variáveis categóricas
ggplot(penguins, aes(x = island, fill = species)) +
    geom_bar()

#gráfico de dispersão
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
    geom_point(aes(color = species, shape = island))