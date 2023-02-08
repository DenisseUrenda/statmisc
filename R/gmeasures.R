#######################################################
# gmeasures()
# Compute the descriptive statistics specified by the
# which argument.
#######################################################

gmeasures = function(lower, upper, freq, which = "all", prob = c(.25,0.5,.75),
                     per = TRUE, print = TRUE){

  gcheck(lower, upper, freq)

  if(!is.character(which)) stop("which must be a character vector.")
  if(!(is.logical(print) & length(print) == 1))
    stop("print must be a logical value.")

  measure.names = c("mean","median","mode","IQR","MAD","var",
                    "sd","cv","percentile","skew","kurtosis")

  if(!all(which %in% c(measure.names,"all")))
    stop("At least one of the values in which is invalid.")
  which = unique(which)

  if("all" %in% which) which = measure.names

  measures = list(); i = 1
  printing = NULL
  for(w in which){
    fun = match.fun(paste0("g",w))
    if(w == "percentile") measures[[i]] = fun(lower, upper, freq, prob)
    else if(w == "cv") measures[[i]] = fun(lower, upper, freq, per)
    else measures[[i]] = fun(lower, upper, freq)

    if(w == "percentile")
      pr = sprintf("%s (%s): %f\n",w,names(measures[[i]]),measures[[i]])
    else if(w == "mode")
      pr = sprintf("%s (%d): %f\n",w,1:length(measures[[i]]),measures[[i]])
    else pr = sprintf("%s: %f\n",w,measures[[i]])
    printing = c(printing,pr)
    i = i + 1
  }
  names(measures) = which
  if(print) cat(paste0(printing, collapse = ""))
  invisible(measures)
}
