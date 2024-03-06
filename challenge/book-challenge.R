library(ggplot2)
library(palmerpenguins)
library(dplyr)
library(ggthemes)


media_por_especie_sexo <- penguins %>%
  group_by(species, sex) %>%
  summarise(
    media_bill_length_mm = mean(bill_length_mm, na.rm = TRUE),
    media_bill_depth_mm = mean(bill_depth_mm, na.rm = TRUE),
    .groups = "drop"
  ) 

ggplot(
  data = penguins,
  mapping = aes(x = bill_length_mm, y = bill_depth_mm, color = species)
) +
  geom_point(aes(color = species, shape = sex)) +
  geom_smooth(method = "lm") +
geom_point(
    data = media_por_especie_sexo,
    mapping = aes(x = media_bill_length_mm, y = media_bill_depth_mm, color = species, shape = sex),
    size = 5
  ) +
  labs(
    title = "Relação entre comprimento e profundidade por espécie",
    subtitle = "Análise por espécie e sexo dos pinguins",
    x = "Comprimento do bico (mm)",
    y = "Profundidade do bico (mm)",
    color = "Espécie",
    shape = "Sexo"
  ) +
  scale_color_colorblind() +
  theme_clean()
