\name{pba}
\alias{pba}
\alias{pbaAgain}
\title{
Propensity-Biased Allocation
}

\description{
Performs propensity-biased allocation for assigning a new unit to treatment in a sequential design with two treatment levels (i.e., treatment and control).
}

\usage{
pba(x, tr, newx, k = 1, global = 0.5)
pbaAgain(previous, newx, k = NA)
}

\arguments{
  \item{x}{A data frame of the covariate values of previously assigned units.}
  \item{tr}{A vector of treatment assignments (0 or 1) for previously assigned units.}
  \item{newx}{Data frame of covariate values of the new unit.}
  \item{k}{Balancing parameter.}
  \item{global}{Global target proportion to be treated.}
  \item{previous}{The output of a previous call to \code{pba} or \code{pbaAgain}}
}

\details{
The function \code{pba} generates a treatment assignment for a new unit.  The steps of the process include regressesing \code{tr} on \code{x} by logistic regression, computeing the fitted value of the new unit using covarate values in \code{newx}, and transforming the fitted propensity score into the probability of treatment by a call to \code{\link{piFunction}} using \code{k} and \code{global} as parameters.  The balancing parameter \code{k} must be one of \code{0}, \code{Inf}, or the ratio of two positive odd integers.  Small values of \code{k} result in less restrictive randomization while larger values of \code{k} result in more forced balance. In particular, \code{k = 0} is equivalent to pure randomization and \code{k = Inf} results in deterministic allocation.  Finally, a treatment assignment for the new unit is generated via a Bernoulli trial with probability from \code{\link{piFunction}}.

The function \code{pbaAgain} takes as input the output from a previous call to \code{pba} or \code{pbaAgain} and runs \code{pba} for the new unit using the values of \code{newx}.  If \code{k = NA} (the default), the value of \code{k} from \code{previous} is used; otherwise, the provided value of \code{k} is used.  The parameter \code{global} is assumed to stay the same throughout the trial.  The output of \code{pbaAgain} contains the same information as \code{pba}.
}

\value{
  \item{results}{A list of results from the PBA procedure.}
  \item{phat}{The fitted propensity score for the new unit.}
  \item{ptreat}{The probability of assignment to the treatment group for the new unit.}
  \item{newtr}{Result of random assignment using \code{ptreat}.}
  \item{input}{A list of inputs to PBA procdure.  Used in future calls to \code{pbaAgain}.}
  \item{x}{Input \code{x}.}
  \item{tr}{Input \code{tr}.}
  \item{newx}{Input \code{newx}.}
  \item{k}{Input \code{k}.}
  \item{global}{Input \code{global}.}
}

\references{
Loux, T.M. (2013) A simple, flexible, and effective covariate-adaptive treatment allocation procedure.  Statistics in Medicine 32(22), 3775-3787.  \href{http://onlinelibrary.wiley.com/doi/10.1002/sim.5837/abstract}{doi: 10.1002/sim.5837}
}

\author{
Travis M. Loux
}

\examples{
x0 = data.frame(matrix(rnorm(60), ncol=3))
t0 = rbinom(nrow(x0), size=1, prob=0.5)

x1 = data.frame(matrix(rnorm(3), ncol=3))
trial1 = pba(x=x0, tr=t0, newx=x1, k=Inf)

x2 = data.frame(matrix(rnorm(3), ncol=3))
trial2 = pbaAgain(previous=trial1, newx=x2)

x3 = data.frame(matrix(rnorm(3), ncol=3))
trial3 = pbaAgain(previous=trial2, newx=x3, k=5/3)
}

\keyword{ design }
\keyword{ multivariate }
