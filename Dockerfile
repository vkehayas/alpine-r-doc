FROM alpine:3.8

RUN apk upgrade --update
RUN apk add --no-cache gcc g++
RUN apk add R R-dev --no-cache

RUN Rscript -e "install.packages(c('knitr', 'rmarkdown'), repos = 'https://cloud.r-project.org/')"
