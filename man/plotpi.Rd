\name{plotpi}
\alias{plotpi}
\alias{addpi}
\title{
Plots of piFunction
}            
        
\description{
Can be used to investigate the strength of balance forced by various values of the tuning parameter \code{k}.
}

\usage{
plotpi(k, global = 0.5)
addpi(k, global = 0.5, ...)
}

\arguments{
  \item{k}{Balancing parameter.}
  \item{global}{Global target for proportion of units treated.}
  \item{...}{Parameters in \code{addpi} passed to \code{lines} function.}
}

\details{
The function \code{plotpi} creates a plot of treatment probability against fitted propensity score for values of \code{k} and \code{global}.  The function \code{addpi} adds a curve for a new combination of \code{k} and \code{global} to an existing plot.
}

\author{
Travis M. Loux
}

\examples{
plotpi(k=3, global=0.5)
addpi(k=5/3, lty=2, col='red')
plotpi(k=1/3, global=2/3)
}
