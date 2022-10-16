
# Polished Plumber Demo API

Simple API using Polished Auth with a Plumber API.

### build Docker container

```terminal

# build the docker image
docker build -t polished_plumber_demo .

# run the docker container.  This is useful for local testing.
docker run --rm -p 8080:8080 polished_plumber_demo
```

```R
# or run locally, not in docker

plumber::pr_run(plumber::pr(file = './api/api.R'), port=8080)

r <- httr::POST(
  "http://localhost:8080/hi",
  httr::authenticate(
    user = "demo@tychobra.com",
    password = "polished"
  )
)

rc <- httr::content(r)
```

# Deploy to Cloud Run

```terminal
# tag image for deployment to GCR (Google Container Registry)
docker tag auth_api gcr.io/polished-299417/polished_plumber_demo

# push tagged image to GCR
docker push gcr.io/polished-299417/polished_plumber_demo
```
