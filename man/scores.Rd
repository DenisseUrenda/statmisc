\name{scores}
\alias{scores}

\title{
Z Scores
}
\description{
Compute the z scores of a sample.
}
\usage{
scores(x, na.rm = FALSE)
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
See also \code{\link{scale}}.
}
\examples{
x = rnorm(10)
scores(x)
scale(x)
(x-mean(x))/sd(x)
}

