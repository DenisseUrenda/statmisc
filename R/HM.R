
HM = function(x, na.rm = FALSE){

  if(any(x == 0)) return(NA)
  if(na.rm) x = as.numeric(na.omit(x))
  return(n/sum(1/x))
}
