FROM rocker/r-base:4.2.1
MAINTAINER Andy Merlino <andy.merlino@tychobra.com>


# install system dependencies
RUN apt-get update -qq && apt-get install -y \
  curl \
  git-core \
  libssl-dev \
  libcurl4-openssl-dev \
  libxml2-dev \
  gnupg2


RUN R -e "install.packages('remotes')"


# install CRAN R packages
RUN R -e "remotes::install_version('config', version = '0.3.1', upgrade = 'never')"
RUN R -e "remotes::install_version('plumber', version = '1.2.0', upgrade = 'never')"
RUN R -e "remotes::install_version('pool', version = '0.1.6', upgrade = 'never')"

# install GitHub R packages
RUN R -e "remotes::install_github('tychobra/polished', ref = 'ac32a0d2fa1e2414c194f4a6e59464a0bcaf19d7', force = TRUE, quiet = FALSE)"


VOLUME /plumber

# copy plumber API to "/plumber" directory in Docker container
COPY ./api /plumber


ENTRYPOINT ["R", "-e", "plumber::pr_run(plumber::pr(file = '/plumber/api.R'), port=8080, host = '0.0.0.0')"]
