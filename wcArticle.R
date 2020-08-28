---
title: "Weather Information Preferences in United States"
subtitle: "Summary report for the `r params$region`Region"
author: "Vipin Prasad"
date: "`r format(Sys.Date(), '%A, %B %d, %Y')`"
output: html_document
params:
  region:
  label:"Region:"
    value: Mountain
    input: select
    choices: ["East North Central","East South Central",
          "Middle Atlantic","Mountain", "New England",
          "Pacific","South Atlantic", "West North Central",
          "West South Central"]
---

#Here is the code for the first R code chunk

```{r setup, include=FALSE}
# define knitr options
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(warning = FALSE)
knitr::opts_chunk$set(message = FALSE)

    # set any missing NAs in table to blank
options(knitr.kable.NA='')

    # load R packages
library(fivethirtyeight)
library(tidyverse)
library(knitr)
library(kableExtra)
library(ggthemes)

# load steak_survey dataset
data("weather_check", package="fivethirtyeight")

# create subset, no missing NAs
# pick a specific region
dat <- weather_check %>%
      filter(region=="Mountain")

```
