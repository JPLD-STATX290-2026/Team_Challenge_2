library(tidyverse)

raw_data <- read.csv("data/raw/1976-2024-president.csv")

clean_data <- raw_data %>%
  select(-party_detailed, -version, -notes, -writein, -state_fips, -state_cen, -state_po, -state_ic, -office)


clean_data <- clean_data %>%
  mutate(
    party_simplified = case_when(
      party_simplified == "DEMOCRAT" ~ "DEMOCRAT",
      party_simplified == "REPUBLICAN" ~ "REPUBLICAN",
      party_simplified == "LIBERTARIAN" ~ "OTHER",
      TRUE ~ "OTHER"
    ),
    candidate = if_else(
      party_simplified == "OTHER",
      "OTHER",
      candidate
    )
  ) %>% 
  group_by(
    year,
    state,
    party_simplified,
    totalvotes
  ) %>%
  summarise(
    candidatevotes = sum(candidatevotes, na.rm = TRUE),
    .groups = "drop"
  )

clean_data <- clean_data %>% 
  mutate(
    vote_percent = round((candidatevotes / totalvotes)*100, 2)
  )

View(clean_data)