#' Title
#'
#' @param i this should be the period whose value you want to forecast
#'
#' @return
#' @export this will output the plot with historical value and predicted value
#'
test1_plot<-function(i){
  t=1:i
  plot(get(f1[i-150]),lwd=3)
  lines(t,tsdata[1:i],'l',col='red')}
