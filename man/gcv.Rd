\name{gcv}
\alias{gcv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Grouped Data Coefficient of Variation
}
\description{
Computes the coefficient of variation of group data.
}
\usage{
gcv(lower, upper, freq, per = TRUE)
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
  \item{per}{
  Logical value indicating whether percentage must be computed or not. Defaults to
  \code{TRUE}.
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
  See also \code{\link{gmeasures}}.
}
\examples{
l = seq(5,40,5)
u = seq(10,45,5)
f = sample(5:40, length(l), TRUE)
gcv(l,u,f)
gcv(l,u,f,FALSE)
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
