library(shiny)
library(polished)
library(config)

app_config <- config::get()

polished_config(
  app_name = "02_custom_sign_in",
  api_key = app_config$api_key
)

