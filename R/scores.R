
scores = function(x, na.rm = FALSE){

  if(na.rm) x = as.numeric(na.omit(x))
  return((x-mean(x))/sd(x))
}
