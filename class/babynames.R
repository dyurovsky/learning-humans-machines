babynames %>%
  filter(name == "Garret", sex == "M") %>%
  ggplot(aes(x = year, y = prop)) +
  geom_point()

ggsave("garret_point.png", width = 4, height = 2.5, units = "in", dpi = 600)

babynames %>%
  filter(name == "Parker") %>%
  ggplot(aes(x = year, y = prop, color = sex)) +
  geom_line()

ggsave("parker_line.png", width = 4.25, height = 2.5, units = "in", dpi = 600)

babynames %>%
  filter(name == "Parker") %>%
  ggplot(aes(x = year, y = prop, color = sex)) +
  geom_line() +
  theme(legend.position = c(.2,.8))

ggsave("parker_legend.png", width = 4, height = 2.5, units = "in", dpi = 600)
