library(shiny)
library(polished)
library(config)

app_config <- config::get()

# configure polished
global_sessions_config(
  app_name = "06_your_own_firebase_project",
  api_key = app_config$api_key,
  firebase_config = app_config$firebase
)
