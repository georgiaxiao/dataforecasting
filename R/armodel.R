library(tseries)
#' Title armodel
#' @description This function can use the AR model and see the summary with simplied method.
#' @param i The power you choose for the model.
#'
#' @return
#' @export
#'

armodel<-function(i){
  tsdata=ts(data_402)
  AR_model=arima(tsdata[1:150],order = c(i,0,0))
  summary(AR_model)
}
