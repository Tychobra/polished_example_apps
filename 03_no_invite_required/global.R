library(shiny)
library(polished)
library(config)

app_config <- config::get()

polished::global_sessions_config(
  app_name = "03_no_invite_required",
  api_key = app_config$api_key,
  is_invite_required = FALSE
)
