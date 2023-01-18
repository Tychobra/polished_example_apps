library(plumber)
library(polished)


#* @plumber
function(pr) {
  pr %>%
    # optionally add auth to the openapi spec so that you can use swagger with the auth filter
    pr_set_api_spec(polished::add_auth_to_spec()) %>%
    pr_mount("/v1", plumb("./api.R"))
}