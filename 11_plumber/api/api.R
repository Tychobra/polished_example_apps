
api_config <- config::get(file = "config_internal.yml")

polished::polished_config(
  api_key = api_config$api_key,
  app_name = "11_plumber"
)

#' @filter auth
polished::auth_filter()


# do not actually show this in the post
#' @get /hi
function(req, res) {

  page_out <- paste0('
    <div
      style="display: flex; height: 80vh; justify-content: center; align-items: center">,
      <div
        style="background-color: #CCC; box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.2); padding: 30px;"
      >', req$polished_session, '
      </div>
    </div>'
  )

  return(page_out)
}

# do not actually show this in the post
#' @post /hi
function(req, res) {

  return(req$polished_session)
}
