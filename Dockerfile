FROM skyzyx/alpine-pandoc:1.2.0

RUN apk upgrade --update
RUN apk add --no-cache gcc g++ linux-headers
RUN apk add R R-dev --no-cache

RUN Rscript -e "install.packages(c('knitr', 'rmarkdown'), repos = 'https://cloud.r-project.org/')"
