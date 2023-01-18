

test_that("basic auth works with valid credentials", {

  res <- httr::POST(
    paste0(api_url, "/hi"),
    httr::authenticate(
      user = "demo@tychobra.com",
      password = "polished"
    )
  )

  res_content <- jsonlite::fromJSON(
    httr::content(res, "text", encoding = "UTF-8")
  )

  status_out <- httr::status_code(res)

  expect_equal(status_out, 200L)
  expect_equal(length(res_content), 9L)
})

test_that("basic auth fails with invalid credentials", {

  res <- httr::POST(
    paste0(api_url, "/hi"),
    httr::authenticate(
      user = "demo@tychobra.com",
      password = "wrong pass"
    )
  )

  res_content <- jsonlite::fromJSON(
    httr::content(res, "text", encoding = "UTF-8")
  )

  status_out <- httr::status_code(res)

  expect_equal(status_out, 401L)
  expect_equal(res_content$error, "Invalid password")
})
