
kurtosis = function(x, na.rm = FALSE){

  if(na.rm) x = as.numeric(na.omit(x))
  m = mean(x)
  s = sd(x)
  n = length(x)
  res = sum((x-m)^4)/(n*s^4) - 3
  return(res)
}
