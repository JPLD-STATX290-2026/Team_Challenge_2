library(tidyverse)

data_2012 <- read_csv("data/raw/state_polls_2012.csv")

election_date <- as.Date("2012-11-08")
pole_end_date <- as.Date(data_2012$end_date)

days_to_election <- election_date - pole_end_date

ggplot(data = data_2012, aes(x = days_to_election, y = Obama, colour = days_to_election)) +
  labs(
    title = "Proximity of Pollings Effect on Results",
    x = "Days to Election",
    y = "Percentage Votes Obama",
  ) +
  geom_point() +
  coord_cartesian(ylim = c(0, 100)) +
  geom_smooth(method = "lm", colour = "black") +
  scale_colour_gradient(low = "blue", high = "darkblue")

ggplot(data = data_2012, aes(x = days_to_election, y = Romney, colour = days_to_election)) +
  labs(
    title = "Proximity of Pollings Effect on Results",
    x = "Days to Election",
    y = "Percentage Votes Romney",
  ) +
  geom_point() +
  coord_cartesian(ylim = c(0, 100)) +
  geom_smooth(method = "lm", colour = "black") +
  scale_colour_gradient(low = "red", high = "darkred")
  
  