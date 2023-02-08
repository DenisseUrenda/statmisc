\name{Applewood}
\alias{Applewood}
\docType{data}
\title{
Applewood dataset
}
\description{
Dataset containing sales information from the Applewood Auto Group.
}
\usage{data("Applewood")}
\format{
  A data frame with 180 observations on the following 5 variables.
  \describe{
    \item{\code{Age}}{age of buyer at the time of the purchase.}
    \item{\code{Profit}}{amount erned by he dealership on the sale of the vehicle.}
    \item{\code{Location}}{dealership where the vehicle was purchased.}
    \item{\samp{Vehicle-Type}}{Vehicle type: SUV, sedan, compact, hybrid, or, truck}
    \item{\code{Previous}}{number of vehicles previously purchased by the consumer.}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
Lind, D., Marchal, W. & Wathen S. (2020) Basic Statistics for Business and Economics. McGraw Hill. 10th Edition.
}
\references{

}
\examples{
data(Applewood)
str(Applewood)
table(Applewood$Location)
}
\keyword{datasets}
