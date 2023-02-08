
freq.table = function(x, freq = "absolute", cumu = FALSE, total = FALSE){

  if(!(is.numeric(x)|is.character(x)|is.factor(x)))
    stop("x must be a numeric, character or factor vector.")
  if(length(unique(x)) < 2) stop("x must contain at least two different values.")
  if(!is.character(freq)) stop("freq must be a character vector")
  if(!all(freq %in% c("absolute","relative","percent", "all")))
    stop('Invalid freq value. Must be a subset of "absolute","relative","percent" or "all"')
  if(!(length(cumu) == 1 & is.logical(cumu))) stop("cumu must be a logical value.")
  if(!(length(total) == 1 & is.logical(total))) stop("total must be a logical value.")

  freq = unique(freq)
  if("all" %in% freq) freq = c("absolute","relative","percent")

  tabx = table(x)
  namesx = names(tabx)
  absx = as.numeric(tabx)

  dat = data.frame(rep(NA, length(namesx)))
  for(fr in freq){
    if(fr == "absolute"){
      dat$Absolute = absx
      if(cumu) dat$Abs.Cumu = cumsum(dat$Absolute)
    }else if(fr == "relative"){
      dat$Relative = absx/sum(absx)
      if(cumu) dat$Rel.Cumu = cumsum(dat$Relative)
    }else if(fr == "percent"){
      dat$Percent = absx/sum(absx)*100
      if(cumu) dat$Per.Cumu = cumsum(dat$Percent)
    }
  }
  dat[,1] = NULL

  if(total){
    tot = sapply(dat,sum)
    dm = dim(dat)
  }
  if(total & !cumu){
    dat[dm[1]+1, ] = sapply(dat,sum)
  }else if(total & cumu){
    tot2 = rep(NA,dm[2])
    tot2[seq(1,dm[2],2)] = tot[seq(1,dm[2],2)]
    dat[dm[1]+1, ] = tot2
  }

  if(total) rownames(dat) = c(namesx,"Total")
  else rownames(dat) = namesx

  return(dat)
}
