library(shiny)
library(polished)

# configure the global sessions when the app initially starts up.
polished::global_sessions_config(
  app_name = "my_first_shiny_app",
  api_key = "<your polished.tech API key>"
)
