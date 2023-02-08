\name{BWSyP}
\alias{BWSyP}
\docType{data}
\title{
25 S&P 500 Companies
}
\description{
Dataset containing infromation about 25 companies that are part of the S&P 500.
}
\usage{data("BWSyP")}
\format{
  A data frame with 25 observations on the following 6 variables.
  \describe{
    \item{\code{Company}}{Company name}
    \item{\code{Exchange}}{Where the share is marketed (listed): N (Stock of New York) and NQ (Nasdaq National Market).}
    \item{\code{Ticker}}{Abbreviation used to identify the stock on the exchange listing}
    \item{\samp{Rank}}{Number from 1 to 500 that indicates the strength of the company}
    \item{\samp{Price}}{Share closing price in dollars (Feb 28, 2005)}
    \item{\samp{Earnings}}{Earnings per share in last 12 months.}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
Anderson, D., Sweeney D., & Williams, T. (2008) Statistics for Business and Economics. CENGAGE Learning, 10th ed.
}
\examples{
data(BWSyP)
str(BWSyP)
}
\keyword{datasets}
