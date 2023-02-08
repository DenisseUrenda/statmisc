
cv = function(x, na.rm = FALSE, perc = TRUE){

  if(na.rm) x = as.numeric(na.omit(x))
  res = mean(x)/sd(x)
  if(perc) res = res*100
  return(res)
}
