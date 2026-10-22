## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(mapnhanespa)

## -----------------------------------------------------------------------------
study_data <- data.frame(
  id = c("P01", "P02", "P03"),
  age = c(25, 62, 84),
  sex = c("Female", "Male", "Female"),
  measure = c("mims", "ssl_steps", "AC"),
  value = c(15000, 7500, 1000000)
)

map_nhanes_pa_quantiles(study_data, id = "id")

## -----------------------------------------------------------------------------
all_measures <- data.frame(
  id = rep("P01", 9),
  age = 25,
  sex = "Female",
  measure = c("total_activity_counts", "total_log10AC", "total_PAXMTSM",
              "total_log10PAXMTSM", "total_scsslsteps", "total_scrfsteps",
              "total_oaksteps", "total_vssteps", "total_vsrevsteps"),
  value = c(2773035, 3039, 14653, 1043, 8694, 11421, 12055, 9505, 9631)
)

map_nhanes_pa_quantiles(all_measures, id = "id")

## -----------------------------------------------------------------------------
nhanes_pa_measure_map()

## -----------------------------------------------------------------------------
measures <- data.frame(
  id = rep("P01", 4),
  age = 25,
  sex = "Female",
  measure = c("mims", "PAXMTSM", "total_ac", "total_activity_counts"),
  value = c(15000, 15000, 2773035, 2773035)
)

map_nhanes_pa_quantiles(measures, id = "id")

nhanes_pa_measure_cdf("total_activity_counts", age = 25, sex = "Female")(2773035)

## -----------------------------------------------------------------------------
map_nhanes_pa_quantiles(study_data, id = "id")

## -----------------------------------------------------------------------------
map_nhanes_pa_quantiles(study_data, id = "id", wave = "2013-2014")

## -----------------------------------------------------------------------------
map_nhanes_pa_quantiles(study_data, id = "id", sex = NULL)

## -----------------------------------------------------------------------------
map_nhanes_pa_quantiles(study_data, id = "id", age = NULL)

## -----------------------------------------------------------------------------
map_nhanes_pa_quantiles(study_data, id = "id", sex = NULL, wave = 7)

## -----------------------------------------------------------------------------
nhanes_pa_quantile(
  value = 15000,
  age = 25,
  sex = "Female",
  measure = "mims"
)

## -----------------------------------------------------------------------------
nhanes_pa_quantile(
  value = 15000,
  age = 25,
  sex = NULL,
  measure = "mims",
  wave = "2011-2012"
)

## -----------------------------------------------------------------------------
suppressWarnings(nhanes_pa_age_category(c(8, 25, 84, 90)))

