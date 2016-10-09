\name{piFunction}
\alias{piFunction}
\title{
Get PBA Treatment Probability
}

\description{
Used within calls to \code{pba} and \code{pbaAgain} to obtain the probability a unit is assigned treatment given its fitted propensity score.
}

\usage{
piFunction(fit, kparam, qparam)
}

\arguments{
  \item{fit}{Fitted propensity score.}
  \item{kparam}{Balancing parameter.}
  \item{qparam}{Global target for proportion of units treated.}
}

\details{
The input \code{kparam} must be one of \code{0}, \code{Inf}, or the ratio of two positive odd integers.  Both \code{fit} and \code{qparam} must be between 0 and 1.
}

\value{
A numeric object.  In the conext of PBA, the probability of assignment to treatment for the current unit.
}

\author{
Travis M. Loux
}

\examples{
piFunction(fit=0.6, kparam=1, qparam=0.5)
piFunction(fit=0.6, kparam=5, qparam=0.5)
piFunction(fit=0.6, kparam=1/5, qparam=0.5)

piFunction(fit=0.6, kparam=1, qparam=2/3)
piFunction(fit=0.6, kparam=5, qparam=2/3)
piFunction(fit=0.6, kparam=1/5, qparam=2/3)
}
