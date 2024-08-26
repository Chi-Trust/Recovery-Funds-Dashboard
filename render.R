library(rmarkdown)
library(purrr)

# Load Merriweather font
uname <- "RPitingo"
#uname <- "astern"

pc_font_path <- paste0("C:/Users/", uname, "/AppData/Local/Microsoft/Windows/Fonts/")
mac_font_path <- "~/Library/Fonts"
font_path <-
  switch(Sys.info()[["sysname"]],
         Windows = {
           pc_font_path
         },
         Darwin = {
           "~/Library/Fonts"
         }
  )

font_import(
  paths = font_path,
  pattern = "Merriweather",
  prompt = FALSE
)

site_pages <- c(
  "infrastructure-funds.Rmd",
  "recovery-funds.Rmd",
  "FAQ.Rmd",
  "glossary.Rmd",
  "index.Rmd"
)

walk(site_pages, ~ rmarkdown::render(.x, "html_document"), clean = TRUE)
