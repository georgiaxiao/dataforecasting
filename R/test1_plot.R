library(forecast)
tsdata=ts(data_402)
AR1_model=arima(tsdata[1:150],order = c(1,0,0))
f1<-paste('f1_',151:200,sep='')
for (i in 1:50){
  newend=149+i
  ar1=arima(tsdata[1:newend],order = c(1,0,0))
  assign(f1[i],forecast::forecast(ar1,h=1,level=95))
}
#' test1_plot function
#' @description this will plot the prediction value with its prediction interval
#' from a AR(1) Model
#' @param i this should be the period whose value you want to forecast
#'
#' @return
#' @export plot this will output the plot with historical value and predicted value
#'

test1_plot<-function(i){
  t=1:i
  plot(get(f1[i-150]),lwd=3)
  lines(t,tsdata[1:i],'l',col='red')}
