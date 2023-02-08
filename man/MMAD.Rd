\name{MMAD}
\alias{MMAD}
\title{
Median Absolute Deviation
}
\description{
Computes the median absolute deviation using the \code{center} as the center of the sample.
}
\usage{
MMAD(x, center = mean, na.rm = FALSE)
}
\arguments{
  \item{x}{
a  numeric vector.
}
  \item{center}{
function used to compute the center. Defaults to \code{mean}.
}
  \item{na.rm}{
logical value indicating whether \code{NA} values must be removed before calculation. Defaults to \code{FALSE}.
}
}
\details{
}
\value{
}
\references{
}
\author{
}
\note{
}

\seealso{
See also \code{\link{MAD}}.
}
\examples{
x = rnorm(100)
sd(x)
MMAD(x)
median(abs(x-mean(x)))
}

