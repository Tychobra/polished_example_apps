library(shiny)
library(polished)
library(config)

app_config <- config::get()

global_sessions_config(
  app_name = app_config$app_name,
  firebase_config = app_config$firebase,
  api_key = app_config$api_key
)

