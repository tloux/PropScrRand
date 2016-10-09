\name{PropScrRand-package}
\alias{PropScrRand-package}
\alias{PropScrRand}
\docType{package}
\title{
Propensity score methods for assigning treatment in randomized trials
}

\description{
Provides propensity score-based methods for allocating units to treatment experiments with two treatment levels (e.g., treatment and control).
}
\details{
\tabular{ll}{
Package: \tab PropScrRand\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2013-11-14\cr
License: \tab GPL-3\cr
}
For sequential allocation, the functions the user will interact with directly are \code{pba} and \code{pbaAgain}.  Both of these functions perform propensity-biased allocation, producing a treatment assignment for the current unit, among other information.  The function \code{plotpi} can be used to investigate the strength of balance forced by various values of the tuning parameter \code{k}, with curves for new values of \code{k} added to the plot via \code{addpi}.  For randomization when all baseline covariates are known, use \code{pcr}, which will conduct propensity-constrained randomization.  The remaining functions are called from these internally.
}
\author{
Travis M. Loux

Maintainer: Travis M. Loux <loux@slu.edu>
}

\keyword{ design }
\keyword{ multivariate }
