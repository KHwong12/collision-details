library(knitr)
library(markdown)
library(rmarkdown)

accident_numbers = seq(1:10)

# https://community.rstudio.com/t/loop-for-output-files/79716/4
for (i in accident_numbers) {
  rmarkdown::render(
    "detail-sample-page.Rmd",
    output_file = paste0("accident_", i, ".html"),
    param = list(SELECTED_ACCIDENT_NO = i)
    )
}
