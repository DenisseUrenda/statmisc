

MAD = function(x, center = mean, na.rm = FALSE){

  if(na.rm) x = as.numeric(na.omit(x))
  m = center(x)
  return(mean(abs(x-m)))
}
