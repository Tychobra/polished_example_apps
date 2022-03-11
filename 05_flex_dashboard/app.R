app_config <- config::get()

polished::secure_static(
  "flex_dash.html",
  polished_config_args = list(
    "app_name" = "05_flex_dashboard",
    "api_key" = app_config$api_key
  )
)
