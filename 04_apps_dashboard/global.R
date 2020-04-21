suppressMessages({
  library(shiny)
  library(shinydashboard)
  library(tychobratools)
  library(shinyjs)
  library(polished)
  library(config)
  library(dplyr)
})

# set config env to "default" if running app locally for development, and set it to
# production if running on shinyapps.io.
polished::set_config_env()

app_config <- config::get()

polished::global_sessions_config(
  app_name = app_config$app_name,
  api_key = app_config$api_key
)
