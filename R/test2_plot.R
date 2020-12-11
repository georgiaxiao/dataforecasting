library(forecast)
tsdata=ts(data_402)
AR2_model=arima(tsdata[1:150],order = c(2,0,0))
f2<-paste('f2_',151:200,sep='')
for (i in 1:50){
  newend=149+i
  ar2=arima(tsdata[1:newend],order = c(2,0,0))
  assign(f2[i],forecast(ar2,h=1,level=95))
}

#' Title test2_plot
#' @description This plots the predicted value with its prediction intervals by
#' AR(2) model.
#' @param i
#'
#' @return
#' @export
#'

test2_plot<-function(i){
  t=1:i
  plot(get(f2[i-150]),lwd=3)
  lines(t,tsdata[1:i],'l',col='red')}
