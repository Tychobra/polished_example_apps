# script for deploying these example apps to Polished Hosting
library(polished)

# read in your Polished API key
my_config <- config::get(file = "config_internal.yml")

polished:::set_api_url(
  host_api_url = "https://hosting-api-amai4lhqja-ue.a.run.app/v1"
)

# deploy the 01_minimal example app
app_1 <- "01_minimal_example"
deploy_app(
  app_dir = app_1,
  api_key = my_config$api_key,
  app_name = app_1
)

app_2 <- "02_custom_sign_in"
deploy_app(
  app_dir = app_2,
  api_key = my_config$api_key,
  app_name = app_2
)

app_3 <- "03_no_invite_required"
polished::deploy_app(
  app_dir = app_3,
  api_key = my_config$api_key,
  app_name = app_3
)

app_4 <- "04_apps_dashboard"
polished::deploy_app(
  app_dir = app_4,
  api_key = my_config$api_key,
  app_name = app_4
)
app_4a <- "04_basic_insurer_dashboard"
polished::deploy_app(
  app_dir = app_4a,
  api_key = my_config$api_key,
  app_name = app_4a
)
app_4b <- "04_interest_rate_walk"
polished::deploy_app(
  app_dir = app_4b,
  api_key = my_config$api_key,
  app_name = app_4b
)


app_5 <- "05_flex_dashboard"
deploy_app(
  app_dir = app_5,
  api_key = my_config$api_key,
  app_name = app_5
)

app_6 <- "06_social_sign_in"
deploy_app(
  app_dir = app_6,
  api_key = my_config$api_key,
  app_name = app_6
)

app_7 <- "07_alt_sign_in_ui"
deploy_app(
  app_dir = app_7,
  api_key = my_config$api_key,
  app_name = app_7
)

app_8 <- "08_golem_app"
polished::deploy_app(
  app_dir = app_8,
  api_key = my_config$api_key,
  app_name = app_8,
  golem_package_name = "polishedGolemApp"
)

app_9 <- "09_rmarkdown"
deploy_app(
  app_dir = app_9,
  api_key = my_config$api_key,
  app_name = app_9
)

app_10 <- "10_2fa"
deploy_app(
  app_dir = app_10,
  api_key = my_config$api_key,
  app_name = app_10
)
