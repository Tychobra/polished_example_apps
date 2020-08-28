library(shiny)
library(polished)
library(config)

app_config <- config::get(file = "config_internal.yml")

# configure polished
global_sessions_config(
  app_name = "07_alt_sign_in_ui",
  api_key = app_config$api_key,
  firebase_config = app_config$firebase,
  sign_in_providers = c(
    "google",
    "microsoft"
  ),
  is_invite_required = FALSE
)
