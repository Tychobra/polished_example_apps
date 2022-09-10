library(shiny)
library(polished)
library(config)

app_config <- config::get()

# configure polished
polished_config(
  app_name = "10_2fa",
  api_key = app_config$api_key,
  is_invite_required = FALSE,
  is_two_fa_required = TRUE
)
