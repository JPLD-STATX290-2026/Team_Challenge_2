
library(tidyverse)
library(here)       
library(lubridate)   
library(glue)


polls_2012_raw <- read_csv(glue("data/raw/state_polls_2012.csv"))
view(polls_2012_raw)
