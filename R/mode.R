
mode = function(x, na.rm = FALSE){

  if(na.rm) x = as.numeric(na.omit(x))
  t = table(x)
  m = max(t)
  res = names(which(t == m))
  if(length(res) == length(x)) return(NULL)
  if(is.numeric(x)) res = as.numeric(res)
  return(res)
}
