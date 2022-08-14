diamonds %>% 
  ggplot(aes(x = carat, y = price, colour = cut)) + 
  geom_point() +
  scale_x_continuous(breaks = seq (0, 6, 0.5), limits = c(0, 6)) + 
  scale_y_continuous(breaks = seq(0, 20000, 2500), limits = c(0, 20000)) +
  theme_classic() +
  labs (x = "Carat (a measure of diamond weight)",
        y = "Price in US dollars ($)",
        title = "Price of >50,000 round-cut diamonds",
        subtitle = "Data from ggplot2 package") + 
  stat_smooth(method = "lm", se = FALSE) +
  theme(legend.position = "bottom") +
  scale_color_discrete(name = "Cut of Diamond")
