

api_config <- config::get(file = "config_internal.yml")



polished::polished_config(
  api_key = api_config$api_key,
  app_name = "11_plumber"
)

#' @filter auth
polished::auth_filter()




#' @post /hi
#'
#' @serializer unboxedJSON
#'
function(req, res) {

  return(req$polished_session)
}
