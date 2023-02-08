\name{freq.table}
\alias{freq.table}
\title{
Table of Frequencies
}
\description{
Compute the frequencies of values in \code{x} according to \code{freq}.
}
\usage{
freq.table(x, freq = "absolute", cumu = FALSE, total = FALSE)
}

\arguments{

  \item{x}{
  A numeric, character or factor vector for which to compute frequencies.
}
  \item{freq}{
  A character vector indicating which type of frequency to compute.
  The vector could contain any of "absolute", "relative", "percent", or "all".
}
  \item{cumu}{
  Logical value indicating whether the frequency is cumulative or not. Defaults to
  \code{FALSE}.
}
  \item{total}{
  Logical value indicating whether to display the totals. Applicable only to
  non-cumulative frequencies. Defaults to \code{FALSE}.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A dataframe with all frequencies specified by \code{freq}.
}
\references{}
\author{}
\note{}
\seealso{}
\examples{
x = sample(1:6, 50, replace = TRUE)
freq.table(x)
freq.table(x, freq = "all")
freq.table(x, freq = c("relative","percent"), total = TRUE)
freq.table(x, freq = "all", cumu = TRUE, total = TRUE)
}

