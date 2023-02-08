
skew = function(x, na.rm = FALSE){

  if(na.rm) x = as.numeric(na.omit(x))
  m = mean(x)
  s = sd(x)
  n = length(x)
  res = sum((x-m)^3)/(n*s^3)
  return(res)
}
