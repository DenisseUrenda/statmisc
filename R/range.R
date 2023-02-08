
range = function(x, na.rm = FALSE){

  if(na.rm) x = as.numeric(na.omit(x))
  return(diff(base::range(x)))
}
