\name{gmeasures}
\alias{gmeasures}
\title{
Grouped Data Measurements
}
\description{
Computes all grouped data measurements specified in \code{which}.
}
\usage{
gmeasures(lower, upper, freq, which = "all", prob = c(0.25, 0.5, 0.75),
          per = TRUE, print = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{lower}{
  Numeric vector containing lower limits of each class.
}
  \item{upper}{
  Numeric vector containing upper limits of each class. Second to last element
  must be identical to first to second-last elements in \code{lower}.
}
  \item{freq}{
  Integer vector containing frequencies of each class. Must contain nonnegative
  integers.
}
  \item{which}{
  Character vector indicating which grouped data measurement to compute.
  Can be any subset of "mean", "median", "mode", "IQR", "MAD", "var", "sd", "cv",
  "percentile", "skew", "kurtosis", or "all". Defaults to "all".
}
  \item{prob}{
  Numeric vector indicating which percentiles to compute if "percentile" or "all"
  is specified in \code{which}. Must contain values between
  0 and 1. By default, \code{prob = c(0.25, 0.5, 0.75)}.
}
  \item{per}{
  Logical value indicating whether percentage must be computed or not when "cv"
  or "all" is specified in \code{which}. Defaults to \code{TRUE}.
}
  \item{print}{
  Logical value indicating whether the measures must be print out or not. Defaults
  to \code{TRUE}
}
}
\details{
  All three \code{lower}, \code{upper}, and \code{freq} must have the same length.
}
\value{
  A list of same length as \code{which} containing all measurements, if "all" is
  not specified in \code{which}. If
}
\references{}
\author{}
\note{}
\seealso{}

\examples{
# Printing results in console
l = seq(5,40,5)
u = seq(10,45,5)
f = sample(5:40, length(l), TRUE)
gmeasures(l,u,f)
gmeasures(l,u,f, which = c("mean","median","mode"))
gmeasures(l,u,f, which = "percentile", prob = c(0.3,0.8))

# Without printing results
res = gmeasures(l,u,f, print = FALSE)
names(res)
print(res)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
