#' data_402
#'@format a vector with 200 elements inside.
#'@description timeseries
'data_402'
data_402=read_xlsx('Dataset for Homework.xlsx',col_names = F)
usethis::use_data(data_402,overwrite = TRUE)
