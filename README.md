# Exploratory Data Analysis of US Presidential Polling and Election Results

<!-- badges: start -->
![R](https://img.shields.io/badge/language-R-blue)
![Tidyverse](https://img.shields.io/badge/package-tidyverse-1f77b4)
![ggplot2](https://img.shields.io/badge/visualisation-ggplot2-orange)
<!-- badges: end -->

This repository contains the group **Exploratory Data Analysis (EDA) Report** for **STAT X290 – Statistical Practice** group **JPLD** at Adelaide University.

The project explores United States presidential polling and election results using **R**, **tidyverse**, and **ggplot2**. This repository contains the exploratory analysis processes, including the utilised datasets and plots used to investigate polling patterns and election outcomes.

## Project Objectives

The analysis focuses on:

- Exploring the structure and quality of the datasets.
- Identifying missing values and potential data issues.
- Developing research questions for further investigation.
- 

## Datasets

The project includes the following three datasets.

| Dataset | Description |
|---------|-------------|
| `state_polls_2012.csv` | State-level pre-election polling data for the 2012 US Presidential Election. |
| `state_polls_2016.csv` | State-level pre-election polling data for the 2016 US Presidential Election. |
| `1976-2024-president.csv` | Certified state-level US presidential election returns from 1976–2024. |

### Data Sources

- **2012 and 2016 polling data:** HuffPost Pollster project (archived).
- **1976–2024 presidential returns:** MIT Election Data and Science Lab.
- 

## Required Packages

The analysis uses the following R packages:

- `tidyverse` – data manipulation, importing, and visualisation (`dplyr`, `readr`, `tibble`, `ggplot2`, and related packages)
- `naniar` – missing data exploration and visualisation
- `ggthemes` – additional plotting themes and colour blind friendly palettes
- 

Install them with:

```r
install.packages(c("tidyverse", "naniar", "ggthemes"))
```

Load them into your R session with:

```r
library(tidyverse)
library(naniar)
library(ggthemes)
```

## How to Reproduce the Analysis

1. Clone this repository.
2. Open the project in RStudio.
3. Ensure the three CSV files are located in the `data/` folder.
4. Install the required packages.
5. Run [`explore-poll-clean-eda.qmd`](explore-poll-clean-eda.qmd) to reproduce all analyses.

## Research Questions

The datasets allow the investigation of questions such as:

- 
- 
- 