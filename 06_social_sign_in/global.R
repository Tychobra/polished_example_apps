library(shiny)
library(polished)
library(config)

app_config <- config::get()

# configure polished
global_sessions_config(
  app_name = "06_social_sign_in",
  api_key = app_config$api_key,
  firebase_config = app_config$firebase,
  sign_in_providers = c(
    "google",
    "microsoft"
  ),
  is_invite_required = FALSE
)
