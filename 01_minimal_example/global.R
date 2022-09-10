library(shiny)
library(polished)
library(config)

app_config <- config::get()

# configure polished
polished_config(
  app_name = "01_minimal_example",
  api_key = app_config$api_key
)
