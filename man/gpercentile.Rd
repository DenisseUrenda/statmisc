\name{gpercentile}
\alias{gpercentile}

\title{
Grouped Data Percentiles
}
\description{
Computes the percetiles specified in \code{prob} of grouped data.
}
\usage{
gpercentile(lower, upper, freq, prob = c(0.25, 0.5, 0.75))
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
  \item{prob}{
  Numeric vector indicating which percentiles to compute. Must contain values between
  0 and 1. By default, \code{prob = c(0.25, 0.5, 0.75)}.
}
}
\details{
  All three \code{lower}, \code{upper}, and \code{freq} must have the same length.
}
\value{
  A numeric vector of same length as \code{prob} indicating the percentile(s) specified.
}
\references{}
\author{}
\note{}

\seealso{
  See also \code{\link{gmeasures}}.
}
\examples{
l = seq(5,40,5)
u = seq(10,45,5)
f = sample(5:40, length(l), TRUE)
gpercentile(l,u,f)
gpercentile(l,u,f,prob = c(0.3, 0.8))
}
