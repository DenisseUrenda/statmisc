\name{SaYoPillow}
\alias{SaYoPillow}
\docType{data}
\title{
Human Stress Detection in and through Sleep
}
\description{
Dataset containing information recorded from a physiological monitoring to detect human stress in and through sleep time.
}
\usage{data("SaYoPillow")}
\format{
  A data frame with 630 observations on the following 9 variables.
  \describe{
    \item{\code{snore}}{Snoring rate}
    \item{\code{resp}}{Respiration rate}
    \item{\code{temp}}{Body temperature}
    \item{\code{limb}}{Limb movement}
    \item{\code{blood}}{Blood oxygen}
    \item{\code{eye}}{Eye movement}
    \item{\code{hours}}{Sleeping hours}
    \item{\code{heart}}{Heart rate}
    \item{\code{stress}}{Stress level (0-low/normal, 1–medium low, 2-medium, 3-medium high, 4-high)}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
\link{https://www.kaggle.com/datasets/laavanya/human-stress-detection-in-and-through-sleep?select=SaYoPillow.csv}
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(SaYoPillow)
}
\keyword{datasets}
