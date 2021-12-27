library(knitr)
library(markdown)
library(rmarkdown)

collision_serial_no = seq(1:95821)

collision_serial_no_test = sample(collision_serial_no, 20)

# https://community.rstudio.com/t/loop-for-output-files/79716/4
for (i in collision_serial_no_test) {
  rmarkdown::render(
    "detail-sample-page.Rmd",
    output_file = paste0("accident_", i, ".html"),
    param = list(COLLISION_SERIAL_NO = i)
    )
}
