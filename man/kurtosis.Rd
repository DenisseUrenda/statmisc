\name{kurtosis}
\alias{kurtosis}

\title{
Kurtosis
}
\description{
Computes the kurtosis.
}
\usage{
kurtosis(x, na.rm = FALSE)
}
\arguments{
  \item{x}{
a  numeric vector.
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
See also \code{\link{skew}}
}
\examples{
x = rnorm(100)
kurtosis(x)

x[sample(1:100, 10)] = NA
kurtosis(x)
kurtosis(x, TRUE)
}
