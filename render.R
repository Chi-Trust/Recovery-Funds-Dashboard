library(rmarkdown)
library(purrr)
library(extrafont)

site_pages <- c(
  "infrastructure-funds.Rmd",
  "recovery-funds.Rmd",
  "FAQ.Rmd",
  "glossary.Rmd",
  "index.Rmd"
)

walk(site_pages, ~ rmarkdown::render(.x, "html_document"), clean = TRUE)
