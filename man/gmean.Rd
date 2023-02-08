\name{gmean}
\alias{gmean}

\title{
Grouped Data Mean
}
\description{
Computes the mean of grouped data.
}
\usage{
gmean(lower, upper, freq)
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
  Integer vector containing frequencies of each class. Must contain nonnegative integers.
}
}
\details{
  All three \code{lower}, \code{upper}, and \code{freq} must have the same length.
}
\value{}
\references{}
\author{}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
See also \code{\link{gmeasures}}.
}
\examples{
l = seq(5,40,5)
u = seq(10,45,5)
f = sample(5:40, length(l), TRUE)
gmean(l,u,f)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
