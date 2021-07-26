library(knitr)
library(markdown)
library(rmarkdown)

accident_serial_no = seq(1:95821)

accident_serial_no_test = sample(accident_serial_no, 20)

# https://community.rstudio.com/t/loop-for-output-files/79716/4
for (i in accident_serial_no_test) {
  rmarkdown::render(
    "detail-sample-page.Rmd",
    output_file = paste0("accident_", i, ".html"),
    param = list(SELECTED_ACCIDENT_NO = i)
    )
}
