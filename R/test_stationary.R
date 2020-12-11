#' Title
#' @description This function is used to test the staionarity of a series of data by using plots and adf.test.
#' @param testdata
#'
#' @return
#' @export
#'
library(tseries)
test_stationary<-function(testdata=data_402){
  tsdata=ts(testdata)
  figure_one=plot(tsdata,main='Figure One',ylab='Value')
  tseries::adf.test(tsdata)
}
