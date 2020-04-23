library(shiny)
library(polished)

app_config <- config::get()

# configure the global sessions when the app initially starts up.
polished::global_sessions_config(
  app_name = "05_flex_dashboard",
  api_key = app_config$api_key
)
