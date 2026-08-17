
library(tidyverse)
library(here)       
library(lubridate)   
library(glue)


polls_2012_raw <- read_csv(glue("data/raw/state_polls_2012.csv"))
view(polls_2012_raw)

election_day <- c("2012" = as.Date("2012-11-06"),
                  "2016" = as.Date("2016-11-08"))

polls_2012 <- polls_2012_raw |>
  mutate(
    start_date = as.Date(start_date),
    end_date   = as.Date(end_date),
    days_to_election = as.integer(election_day["2012"] - end_date)
  )

ggplot(polls_2012, aes (x = days_to_election, y = Undecided)) + geom_point()+
  geom_smooth(method = "lm")


ggplot(polls_2012_raw, aes (x = sample_size, y = Obama)) + geom_smooth()
ggplot(polls_2012_raw, aes (x = sample_size, y = Romney)) + geom_smooth()


