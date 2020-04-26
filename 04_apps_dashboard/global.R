suppressMessages({
  library(shiny)
  library(shinydashboard)
  library(tychobratools)
  library(shinyjs)
  library(polished)
  library(config)
  library(dplyr)
})


app_config <- config::get()

polished::global_sessions_config(
  app_name = "04_apps_dashboard",
  api_key = app_config$api_key
)
