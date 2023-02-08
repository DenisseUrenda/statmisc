\name{gsd}
\alias{gsd}

\title{
Grouped Data Standard Deviation
}
\description{
Computes the standard deviation of grouped data.
}
\usage{
gsd(lower, upper, freq)
}
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
}
\details{
  All three \code{lower}, \code{upper}, and \code{freq} must have the same length.
}
\value{}
\references{}
\author{}
\note{}


\seealso{
See also \code{\link{gvar}} and \code{\link{gmeasures}}.
}
\examples{
l = seq(5,40,5)
u = seq(10,45,5)
f = sample(5:40, length(l), TRUE)
gsd(l,u,f)
}
