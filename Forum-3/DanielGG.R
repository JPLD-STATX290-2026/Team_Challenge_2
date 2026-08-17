data <- read.csv("data/raw/state_polls_2012.csv")

library(tidyverse)
library(ggplot2)
library(ggthemes)

data %>%
  mutate(mode = factor(mode)) %>%
  ggplot(aes(x = mode, y = Obama, fill = mode)) +
  geom_boxplot() +
  ggthemes::scale_fill_colorblind() +
  labs(title = "Vote Percentage for Obama by Voting Mode", 
       fill = "Mode", x = "Voting Mode", y = "Obama") +
  theme(axis.text.x = element_blank())
