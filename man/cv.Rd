\name{cv}
\alias{cv}
\title{
Coefficient of variation
}
\description{
Computes the coefficient of variation of a sample.
}
\usage{
cv(x, na.rm = FALSE, perc = TRUE)
}
\arguments{
  \item{x}{
a  numeric vector.
}
  \item{na.rm}{
logical value indicating whether \code{NA} values must be removed before calculation. Defaults to \code{FALSE}.
}
  \item{perc}{
logical value indicating whether coefficient of variation should be in percentage. Defaults to \code{TRUE}.
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

}
\examples{
x = rnorm(100)
cv(x)
cv(x, perc = FALSE)
}

